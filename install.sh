#!/usr/bin/env bash
set -euo pipefail

SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="${1:-.}"
TARGET="$(cd "$TARGET" && pwd)"

mkdir -p "$TARGET/.genesis"/{requirements,repository,architecture,references,decisions,checkpoints,evidence,changes,tests,state}
mkdir -p "$TARGET/inputs"/{product,design,api,qa}

cp -R "$SOURCE/skills" "$TARGET/.genesis/skills"
cp -R "$SOURCE/workflows" "$TARGET/.genesis/workflows"
cp -R "$SOURCE/memory" "$TARGET/.genesis/memory"
cp -R "$SOURCE/router" "$TARGET/.genesis/router"

for f in AGENTS.md CLAUDE.md GEMINI.md; do
  if [ ! -f "$TARGET/$f" ]; then
    cp "$SOURCE/$f" "$TARGET/$f"
  elif ! grep -q "Frontend Genesis" "$TARGET/$f"; then
    printf '\n\n' >> "$TARGET/$f"
    cat "$SOURCE/$f" >> "$TARGET/$f"
  fi
done

"$SOURCE/scripts/discover.sh" "$TARGET"
"$SOURCE/scripts/checkpoint.sh" "$TARGET"

echo "Frontend Genesis v0.1.0 initialized."
