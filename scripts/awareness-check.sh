#!/usr/bin/env bash
set -euo pipefail
TARGET="$(cd "${1:-.}" && pwd)"
echo "=== Frontend Genesis Awareness ==="
echo
echo "Git changes:"
git -C "$TARGET" status --short 2>/dev/null || true
echo
echo "Package versions:"
find "$TARGET" -name package.json -not -path '*/node_modules/*' -not -path '*/.git/*' -print0 |
while IFS= read -r -d '' f; do
  if command -v node >/dev/null 2>&1; then
    node -e "const p=require(process.argv[1]); console.log(process.argv[1], p.name||'', p.version||'<no-version>')" "$f" 2>/dev/null || true
  fi
done
echo
echo "Checkpoint:"
cat "$TARGET/.genesis/checkpoints/current.json" 2>/dev/null || echo "No checkpoint."
