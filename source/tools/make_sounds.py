#!/usr/bin/env python3
# Procedurally synthesizes Sentry Sweep's sound effects.
#
#   python3 tools/make_sounds.py sounds          -> writes sounds/*.wav
#   python3 tools/make_sounds.py sounds obj      -> also writes obj/*.vsnd
#
# The .wav files can be converted with the official tool (wav2vircon);
# the optional .vsnd output skips that step. Vircon32 sound format is
# 44100 Hz, signed 16-bit, stereo, preceded by a 12-byte header.
import os, struct, sys, wave
import numpy as np

RATE = 44100
rng = np.random.default_rng(32)

def t(sec): return np.arange(int(sec * RATE)) / RATE

def env(n, attack=0.002, curve=3.0):
    """Fast attack, exponential-ish decay over n samples."""
    x = np.linspace(0, 1, n)
    a = max(1, int(attack * RATE))
    e = (1 - x) ** curve
    e[:a] *= np.linspace(0, 1, a)
    return e

def sweep(f0, f1, sec, shape="square"):
    """Oscillator whose frequency glides exponentially from f0 to f1."""
    tt = t(sec)
    freq = f0 * (f1 / f0) ** (tt / sec)
    phase = 2 * np.pi * np.cumsum(freq) / RATE
    if shape == "square": return np.sign(np.sin(phase))
    if shape == "saw":    return 2 * ((phase / (2 * np.pi)) % 1) - 1
    return np.sin(phase)

def noise(sec): return rng.uniform(-1, 1, int(sec * RATE))

def lowpass(x, k):
    """Cheap one-pole lowpass; k in (0,1], smaller = darker."""
    y = np.empty_like(x); acc = 0.0
    for i, v in enumerate(x):
        acc += k * (v - acc); y[i] = acc
    return y

def mix(*parts):
    n = max(len(p) for p in parts)
    out = np.zeros(n)
    for p in parts: out[:len(p)] += p
    return out

# ---------------- effects ----------------

def player_shot():
    s = 0.22
    zap = sweep(1400, 180, s, "square") * 0.45 + sweep(2100, 260, s, "saw") * 0.25
    n = lowpass(noise(0.08), 0.5) * 0.6
    return mix(zap * env(len(zap), curve=2.5), n * env(len(n), curve=2))

def enemy_shot():
    s = 0.28
    a = sweep(700, 90, s, "saw") * 0.5 + sweep(720, 95, s, "square") * 0.25
    return a * env(len(a), curve=2)

def robot_hit():
    s = 0.16
    tt = t(s)
    clang = (np.sin(2*np.pi*620*tt) + 0.6*np.sin(2*np.pi*1310*tt) + 0.4*np.sin(2*np.pi*2290*tt)) * 0.35
    n = noise(0.04) * 0.5
    return mix(clang * env(len(clang), curve=4), n * env(len(n)))

def robot_destroyed():
    s = 0.9
    boom = lowpass(noise(s), 0.08) * 3.0
    rumble = sweep(120, 35, s, "sine") * 0.6
    crackle = noise(s) * (rng.random(int(s*RATE)) > 0.985) * 0.6
    fall = sweep(900, 120, 0.35, "square") * 0.2
    x = mix(boom + rumble, crackle, fall * env(len(fall)))
    return x * env(len(x), attack=0.004, curve=2)

def player_hurt():
    s = 0.3
    buzz = sweep(180, 70, s, "saw") * 0.6
    thud = lowpass(noise(s), 0.1) * 2.0
    x = buzz + thud
    return x * env(len(x), curve=2.5)

def pickup():
    parts = []
    for i, f in enumerate([660, 880, 1320]):
        tone = np.sin(2*np.pi*f*t(0.12)) * 0.45
        pad = np.zeros(int(i * 0.06 * RATE))
        parts.append(np.concatenate([pad, tone * env(len(tone), attack=0.003, curve=1.5)]))
    return mix(*parts)

def empty_click():
    n = noise(0.03) * 0.7
    c = np.sin(2*np.pi*2600*t(0.03)) * 0.3
    return (n + c) * env(len(n), curve=6)

def game_over():
    parts = []
    for i, f in enumerate([392, 330, 262, 196]):
        dur = 0.22 if i < 3 else 0.7
        tone = sweep(f, f * 0.97, dur, "square") * 0.3
        pad = np.zeros(int(i * 0.22 * RATE))
        parts.append(np.concatenate([pad, tone * env(len(tone), curve=1.2)]))
    return mix(*parts)

def victory():
    parts = []
    notes = [(523, 0.0), (659, 0.12), (784, 0.24), (1047, 0.36), (784, 0.5), (1047, 0.62)]
    for i, (f, start) in enumerate(notes):
        dur = 0.14 if i < len(notes) - 1 else 0.6
        tone = sweep(f, f, dur, "square") * 0.22 + np.sin(2*np.pi*f*2*t(dur)) * 0.1
        pad = np.zeros(int(start * RATE))
        parts.append(np.concatenate([pad, tone * env(len(tone), curve=1.3)]))
    return mix(*parts)

def door_open():
    s = 0.6
    hiss = lowpass(noise(s), 0.25) * 0.5
    motor = sweep(90, 140, s, "saw") * 0.35
    x = (hiss + motor) * np.minimum(1, np.linspace(0, 6, int(s * RATE))) * env(int(s * RATE), curve=0.8)
    clunk = lowpass(noise(0.08), 0.15) * 2.5 * env(int(0.08 * RATE), curve=3)
    return mix(x, np.concatenate([np.zeros(int(0.52 * RATE)), clunk]))

def secret_found():
    parts = []
    for i, f in enumerate([523, 659, 784, 988, 1175]):
        tone = (np.sin(2*np.pi*f*t(0.35)) + 0.3*np.sin(2*np.pi*f*2*t(0.35))) * 0.35
        pad = np.zeros(int(i * 0.07 * RATE))
        parts.append(np.concatenate([pad, tone * env(len(tone), attack=0.004, curve=2)]))
    return mix(*parts)

def plasma_fire():
    s = 0.45
    a = sweep(300, 60, s, "sine") * 0.8 + sweep(310, 62, s, "square") * 0.2
    w = lowpass(noise(s), 0.2) * 0.6
    x = a + w
    return x * env(len(x), attack=0.01, curve=1.8)

def plasma_hit():
    s = 0.35
    x = lowpass(noise(s), 0.12) * 2.0 + sweep(200, 50, s, "sine") * 0.5
    return x * env(len(x), curve=2.5)

def locked_buzz():
    tt = t(0.32)
    x = np.sign(np.sin(2*np.pi*110*tt)) * 0.4 + np.sign(np.sin(2*np.pi*117*tt)) * 0.3
    gate = ((tt // 0.08) % 2 == 0)
    return x * gate * env(len(x), curve=0.6)

def level_complete():
    parts = []
    for i, (f, st) in enumerate([(392, 0), (523, 0.13), (659, 0.26), (784, 0.39), (659, 0.52), (784, 0.62)]):
        dur = 0.13 if i < 5 else 0.5
        tone = sweep(f, f, dur, "square") * 0.2 + np.sin(2*np.pi*f*t(dur)) * 0.2
        parts.append(np.concatenate([np.zeros(int(st * RATE)), tone * env(len(tone), curve=1.2)]))
    return mix(*parts)

def boss_roar():
    s = 1.3
    tt = t(s)
    vib = 1 + 0.08 * np.sin(2*np.pi*7*tt)
    a = sweep(70, 45, s, "saw") * 0.6
    b = sweep(105 * 1.0, 60, s, "square") * 0.25
    grit = lowpass(noise(s), 0.06) * 1.5
    x = (a + b) * vib + grit
    e = np.minimum(1, np.linspace(0, 5, len(x))) * env(len(x), curve=1.2)
    return x * e

# order defines sound IDs in the ROM (see VirconFPS.xml / VirconFPS.c)
SOUNDS = [
    ("PlayerShot", player_shot),
    ("EnemyShot", enemy_shot),
    ("RobotHit", robot_hit),
    ("RobotDestroyed", robot_destroyed),
    ("PlayerHurt", player_hurt),
    ("Pickup", pickup),
    ("EmptyClick", empty_click),
    ("GameOver", game_over),
    ("Victory", victory),
    ("DoorOpen", door_open),
    ("Secret", secret_found),
    ("PlasmaFire", plasma_fire),
    ("PlasmaHit", plasma_hit),
    ("Locked", locked_buzz),
    ("LevelComplete", level_complete),
    ("BossRoar", boss_roar),
]

def to_int16_stereo(x):
    peak = np.max(np.abs(x))
    if peak > 0: x = x / peak * 0.85          # normalize with headroom
    pcm = (np.clip(x, -1, 1) * 32767).astype("<i2")
    return np.repeat(pcm, 2)                   # L,R interleaved

wav_dir = sys.argv[1] if len(sys.argv) > 1 else "sounds"
vsnd_dir = sys.argv[2] if len(sys.argv) > 2 else None
os.makedirs(wav_dir, exist_ok=True)
if vsnd_dir: os.makedirs(vsnd_dir, exist_ok=True)

for name, fn in SOUNDS:
    data = to_int16_stereo(fn())
    with wave.open(os.path.join(wav_dir, f"Sound{name}.wav"), "wb") as w:
        w.setnchannels(2); w.setsampwidth(2); w.setframerate(RATE)
        w.writeframes(data.tobytes())
    if vsnd_dir:
        with open(os.path.join(vsnd_dir, f"Sound{name}.vsnd"), "wb") as f:
            f.write(b"V32-VSND" + struct.pack("<I", len(data) // 2) + data.tobytes())
    print(f"Sound{name}: {len(data)//2/RATE:.2f}s")
