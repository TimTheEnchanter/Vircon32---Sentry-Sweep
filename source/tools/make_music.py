#!/usr/bin/env python3
# Composes Sentry Sweep's music as seamless loops (needs numpy and scipy).
#
#   python3 tools/make_music.py sounds          -> writes sounds/Music*.wav
#   python3 tools/make_music.py sounds obj      -> also writes obj/Music*.vsnd
#
# Every track is rendered as an exact number of bars; notes that ring past the
# end are folded back onto the start, so the loop point is inaudible.
import os, struct, sys, wave
import numpy as np
from scipy.signal import butter, lfilter

RATE = 44100
rng = np.random.default_rng(1993)

# ---------------------------------------------------------------- basics
def hz(note):
    """MIDI note number to frequency."""
    return 440.0 * 2 ** ((note - 69) / 12)

def lowpass(x, cutoff, order=2):
    b, a = butter(order, min(cutoff, RATE * 0.45) / (RATE / 2))
    return lfilter(b, a, x)

def highpass(x, cutoff, order=2):
    b, a = butter(order, cutoff / (RATE / 2), "high")
    return lfilter(b, a, x)

def osc(shape, freq, n, phase=0.0):
    t = np.arange(n) / RATE
    if np.isscalar(freq):
        ph = phase + freq * t
    else:
        ph = phase + np.cumsum(freq) / RATE
    if shape == "sine":   return np.sin(2 * np.pi * ph)
    if shape == "saw":    return 2 * (ph % 1.0) - 1
    if shape == "square": return np.where((ph % 1.0) < 0.5, 1.0, -1.0)
    if shape == "pulse":  return np.where((ph % 1.0) < 0.25, 1.0, -1.0)
    if shape == "tri":    return 2 * np.abs(2 * (ph % 1.0) - 1) - 1
    raise ValueError(shape)

def env(n, a=0.005, d=0.1, s=0.6, r=0.05, hold=None):
    """ADSR envelope; hold = seconds before release starts (default: whole note)."""
    a_n, d_n, r_n = int(a * RATE), int(d * RATE), int(r * RATE)
    hold_n = n - r_n if hold is None else int(hold * RATE)
    e = np.full(n, s, dtype=float)
    if a_n: e[:a_n] = np.linspace(0, 1, a_n)
    if d_n: e[a_n:a_n + d_n] = np.linspace(1, s, len(e[a_n:a_n + d_n]))
    hold_n = max(a_n, min(hold_n, n))
    tail = n - hold_n
    if tail > 0: e[hold_n:] *= np.linspace(1, 0, tail)
    return e

def decay(n, k):
    return np.exp(-np.arange(n) / RATE * k)

# ---------------------------------------------------------------- instruments
def kick(punch=1.0):
    n = int(0.32 * RATE)
    f = 45 + 120 * decay(n, 28)
    x = osc("sine", f, n) * decay(n, 9) * 1.1
    click = lowpass(rng.uniform(-1, 1, n), 3000) * decay(n, 120) * 0.4
    return np.tanh((x + click) * 1.5 * punch)

def snare():
    n = int(0.22 * RATE)
    noise = highpass(lowpass(rng.uniform(-1, 1, n), 7000), 900) * decay(n, 18)
    tone = osc("sine", 190, n) * decay(n, 30) * 0.6
    return (noise * 0.9 + tone)

def hat(open_=False):
    n = int((0.22 if open_ else 0.045) * RATE)
    x = highpass(rng.uniform(-1, 1, n), 7000, 4)
    return x * decay(n, 10 if open_ else 70) * 0.5

def clank():
    """Metallic hit for the industrial tracks (inharmonic partials)."""
    n = int(0.3 * RATE)
    x = sum(osc("sine", f, n) * w for f, w in [(523, 0.5), (1371, 0.4), (2113, 0.3), (3187, 0.2)])
    return x * decay(n, 22) * 0.5

def bass(note, dur, cutoff=900, drive=1.0, shape="saw"):
    n = int(dur * RATE)
    f = hz(note)
    x = osc(shape, f, n) * 0.6 + osc("square", f / 2, n) * 0.35
    x = lowpass(x, cutoff)
    if drive > 1: x = np.tanh(x * drive) / np.tanh(drive)
    return x * env(n, 0.004, 0.08, 0.7, 0.03)

def pluck(note, dur, cutoff=2500, shape="square"):
    n = int(dur * RATE)
    x = osc(shape, hz(note), n) * 0.5 + osc("saw", hz(note) * 1.003, n) * 0.3
    x = lowpass(x, cutoff)
    return x * decay(n, 7)

def pad(notes, dur, cutoff=1400, attack=0.8):
    n = int(dur * RATE)
    x = np.zeros(n)
    for note in notes:
        for det in (-0.12, 0.0, 0.11):
            x += osc("saw", hz(note + det), n, phase=rng.random())
    x = lowpass(x / (len(notes) * 3), cutoff)
    return x * env(n, attack, 0.2, 0.9, min(1.2, dur * 0.4))

def stab(notes, dur):
    n = int(dur * RATE)
    x = sum(osc("saw", hz(nt), n) + osc("saw", hz(nt) * 1.006, n) for nt in notes) / (2 * len(notes))
    return lowpass(x, 2200) * env(n, 0.003, 0.12, 0.35, 0.08)

def siren(note, dur):
    n = int(dur * RATE)
    t = np.arange(n) / RATE
    f = hz(note) * (1 + 0.012 * np.sin(2 * np.pi * 5.5 * t))
    x = osc("square", f, n) * 0.4 + osc("saw", f * 1.004, n) * 0.3
    return lowpass(x, 3000) * env(n, 0.03, 0.2, 0.75, 0.15)

# ---------------------------------------------------------------- sequencer
class Track:
    def __init__(self, bpm, bars):
        self.beat = 60.0 / bpm
        self.length = int(round(bars * 4 * self.beat * RATE))
        tail = 4 * RATE
        self.L = np.zeros(self.length + tail)
        self.R = np.zeros(self.length + tail)

    def add(self, beat, sig, gain=1.0, pan=0.0):
        i = int(round(beat * self.beat * RATE)) % self.length
        a = (pan + 1) * np.pi / 4
        n = min(len(sig), len(self.L) - i)
        self.L[i:i + n] += sig[:n] * gain * np.cos(a)
        self.R[i:i + n] += sig[:n] * gain * np.sin(a)

    def echo(self, beat, sig, gain, pan=0.0, delay_beats=0.75, repeats=2, feedback=0.4):
        self.add(beat, sig, gain, pan)
        g = gain
        for r in range(1, repeats + 1):
            g *= feedback
            self.add(beat + delay_beats * r, sig, g, -pan if r % 2 else pan)

    def finish(self):
        L, R = self.L[:self.length].copy(), self.R[:self.length].copy()
        tail = len(self.L) - self.length
        L[:tail] += self.L[self.length:]        # fold the ringing tail onto the start
        R[:tail] += self.R[self.length:]
        peak = max(np.max(np.abs(L)), np.max(np.abs(R)), 1e-9)
        return np.tanh(L / peak * 1.1) * 0.85, np.tanh(R / peak * 1.1) * 0.85

# ---------------------------------------------------------------- tracks
A2, A3, A4 = 45, 57, 69

def title():
    t = Track(84, 8)
    chords = [[57, 60, 64, 71], [53, 57, 60, 64], [48, 55, 60, 64], [52, 55, 59, 64]]   # Am9 Fmaj7 C Em
    roots = [33, 29, 36, 28]
    for i, ch in enumerate(chords):
        bar = i * 2
        t.add(bar * 4, pad(ch, 8 * t.beat + 1.0, cutoff=1100, attack=1.5), 0.55)
        t.add(bar * 4, bass(roots[i], 8 * t.beat, cutoff=300, shape="tri"), 0.5)
        arp = [ch[0] + 12, ch[2] + 12, ch[1] + 12, ch[3] + 12]
        for k in range(16):                       # slow arpeggio with echoes
            if k % 4 == 3 and rng.random() < 0.5: continue
            t.echo(bar * 4 + k * 0.5, pluck(arp[k % 4], 0.6, cutoff=1800, shape="tri"), 0.22,
                   pan=0.4 if k % 2 else -0.4, delay_beats=0.75, repeats=3, feedback=0.45)
        for b in (0, 2):                          # soft heartbeat
            t.add(bar * 4 + b * 4 + 0, kick(0.6), 0.35)
            t.add(bar * 4 + b * 4 + 0.5, kick(0.4), 0.2)
    return t.finish()

def drums(t, bars, start_bar=0, busy=False, open_hats=True):
    for bar in range(start_bar, start_bar + bars):
        b0 = bar * 4
        for k in (0, 2): t.add(b0 + k, kick(), 0.8)
        if busy and bar % 2 == 1: t.add(b0 + 2.5, kick(0.8), 0.6)
        for k in (1, 3): t.add(b0 + k, snare(), 0.5, pan=0.1)
        for k in range(8):
            if open_hats and k == 7: t.add(b0 + k * 0.5, hat(True), 0.3, pan=0.35)
            else: t.add(b0 + k * 0.5, hat(), 0.32 if k % 2 else 0.22, pan=0.35)

def depot():
    t = Track(118, 16)
    prog = [(45, [57, 60, 64]), (45, [57, 60, 64]), (41, [53, 57, 60]), (43, [55, 59, 62]),
            (45, [57, 60, 64]), (45, [57, 60, 64]), (41, [53, 57, 60]), (40, [52, 56, 59])]   # Am Am F G Am Am F E
    for bar in range(16):
        root, ch = prog[bar % 8]
        b0 = bar * 4
        pattern = [0, 0, 12, 0, 0, 12, 0, 7]           # driving eighth-note bass
        for k, off in enumerate(pattern):
            t.add(b0 + k * 0.5, bass(root - 12 + off, 0.5 * t.beat * 0.92, cutoff=700, drive=1.6), 0.55)
        if bar % 2 == 0:
            t.add(b0, pad([n + 12 for n in ch], 8 * t.beat, cutoff=1000, attack=0.4), 0.28)
        if bar >= 8:                                    # second half: arpeggio joins
            arp = [ch[0] + 12, ch[1] + 12, ch[2] + 12, ch[1] + 24]
            for k in range(16):
                t.echo(b0 + k * 0.25, pluck(arp[k % 4], 0.25, cutoff=2600), 0.16,
                       pan=-0.5 if k % 2 else 0.5, delay_beats=0.75, repeats=1, feedback=0.35)
        t.add(b0 + 3.5, clank(), 0.12, pan=-0.6)
    drums(t, 16, busy=True)
    return t.finish()

def core():
    t = Track(126, 16)
    prog = [(38, [50, 53, 57]), (34, [46, 50, 53]), (31, [43, 46, 50]), (33, [45, 49, 52])]     # Dm Bb Gm A
    for bar in range(16):
        root, ch = prog[(bar // 2) % 4]
        b0 = bar * 4
        gallop = [0, 0.5, 0.75, 1.5, 2, 2.5, 2.75, 3.5]  # galloping sixteenth bass
        for k, pos in enumerate(gallop):
            note = root + (12 if k == 3 else 0)
            t.add(b0 + pos, bass(note, 0.3 * t.beat, cutoff=650, drive=2.2), 0.6)
        if bar % 2 == 0:
            t.add(b0, pad(ch, 8 * t.beat, cutoff=850, attack=0.3), 0.32)
        for k in (0.75, 2.25, 3.75):
            t.add(b0 + k, clank(), 0.2, pan=0.6 if k > 2 else -0.6)
        if bar >= 4:
            motif = [ch[2] + 12, ch[1] + 12, ch[2] + 12, ch[0] + 24, ch[2] + 12, ch[1] + 12, ch[0] + 12, ch[1] + 12]
            for k in range(8):
                t.echo(b0 + k * 0.5, pluck(motif[k], 0.4, cutoff=2000, shape="pulse"), 0.14,
                       pan=-0.4 if k % 2 else 0.4, delay_beats=0.5, repeats=2, feedback=0.35)
    drums(t, 16, busy=True, open_hats=False)
    return t.finish()

def warden():
    t = Track(144, 8)
    riff = [40, 41, 40, 43, 41, 40, 38, 41]     # E phrygian, menacing
    for bar in range(8):
        b0 = bar * 4
        for k in range(8):
            note = riff[(k + bar) % 8] - 12 if k % 2 == 0 else 28
            t.add(b0 + k * 0.5, bass(note, 0.5 * t.beat * 0.9, cutoff=1200, drive=3.0), 0.55)
        for k in range(8): t.add(b0 + k * 0.5, kick(1.2), 0.75)          # eighth-note kicks
        for k in (1, 3): t.add(b0 + k, snare(), 0.6)
        for k in range(16): t.add(b0 + k * 0.25, hat(), 0.18 if k % 2 else 0.12, pan=0.4)
        if bar % 2 == 0:
            t.add(b0, stab([52, 53, 59], 0.6), 0.4)
            t.add(b0 + 1.5, stab([52, 53, 59], 0.4), 0.3)
            t.add(b0 + 3, stab([53, 56, 60], 0.6), 0.35)
        if bar >= 4:
            line = [76, 77, 76, 74] if bar % 2 == 0 else [77, 79, 77, 76]
            t.add(b0, siren(line[0], 2 * t.beat), 0.2, pan=-0.2)
            t.add(b0 + 2, siren(line[2], 2 * t.beat), 0.2, pan=0.2)
    return t.finish()

TRACKS = [("MusicTitle", title), ("MusicDepot", depot), ("MusicCore", core), ("MusicWarden", warden)]

def main():
    wav_dir = sys.argv[1] if len(sys.argv) > 1 else "sounds"
    vsnd_dir = sys.argv[2] if len(sys.argv) > 2 else None
    os.makedirs(wav_dir, exist_ok=True)
    if vsnd_dir: os.makedirs(vsnd_dir, exist_ok=True)
    for name, fn in TRACKS:
        L, R = fn()
        data = np.empty(len(L) * 2, dtype="<i2")
        data[0::2] = (np.clip(L, -1, 1) * 32767).astype("<i2")
        data[1::2] = (np.clip(R, -1, 1) * 32767).astype("<i2")
        with wave.open(os.path.join(wav_dir, f"{name}.wav"), "wb") as w:
            w.setnchannels(2); w.setsampwidth(2); w.setframerate(RATE)
            w.writeframes(data.tobytes())
        if vsnd_dir:
            with open(os.path.join(vsnd_dir, f"{name}.vsnd"), "wb") as f:
                f.write(b"V32-VSND" + struct.pack("<I", len(L)) + data.tobytes())
        print(f"{name}: {len(L) / RATE:.1f}s loop")

main()
