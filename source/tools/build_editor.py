#!/usr/bin/env python3
# Builds tools/level_editor.html from tools/editor_template.html, embedding the
# current Atlas.png and the levels in levels/ so the editor shows the game's art.
#
#   python3 tools/build_editor.py
import base64, glob, json, os, re

root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
template = open(os.path.join(root, "tools", "editor_template.html"), encoding="utf-8").read()
atlas = base64.b64encode(open(os.path.join(root, "Atlas.png"), "rb").read()).decode()
files = sorted(glob.glob(os.path.join(root, "levels", "level*.txt")),
               key=lambda p: int(re.sub(r"\D", "", os.path.basename(p)) or 0))
levels = [open(p, encoding="utf-8").read() for p in files]

html = template.replace("__ATLAS__", "data:image/png;base64," + atlas).replace("__LEVELS__", json.dumps(levels))
out = os.path.join(root, "tools", "level_editor.html")
open(out, "w", encoding="utf-8").write(html)
print(f"wrote {out} ({len(html) // 1024} KB, {len(levels)} levels)")
