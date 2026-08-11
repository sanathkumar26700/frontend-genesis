#!/usr/bin/env bash
set -euo pipefail

TARGET="$(cd "${1:-.}" && pwd)"
G="$TARGET/.genesis"
mkdir -p "$G/checkpoints"

python3 - "$TARGET" "$G/checkpoints/current.json" <<'PY'
import json, pathlib, subprocess, sys, datetime

root = pathlib.Path(sys.argv[1])
out = pathlib.Path(sys.argv[2])

def git(args):
    try:
        return subprocess.check_output(["git", *args], cwd=root, text=True, stderr=subprocess.DEVNULL).strip()
    except Exception:
        return None

packages=[]
for p in sorted(root.rglob("package.json")):
    if any(x in p.parts for x in [".git","node_modules",".genesis"]):
        continue
    try:
        d=json.loads(p.read_text())
    except Exception:
        continue
    packages.append({
        "path": str(p.relative_to(root)),
        "name": d.get("name"),
        "version": d.get("version"),
        "dependencies": d.get("dependencies", {}),
        "devDependencies": d.get("devDependencies", {})
    })

data={
    "created_at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
    "git": {
        "commit": git(["rev-parse","HEAD"]),
        "branch": git(["branch","--show-current"]),
        "status": git(["status","--porcelain"])
    },
    "packages": packages
}
out.write_text(json.dumps(data, indent=2))
print(out)
PY
