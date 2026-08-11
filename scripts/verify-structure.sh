#!/usr/bin/env bash
set -euo pipefail

required=(
README.md AGENTS.md CLAUDE.md GEMINI.md install.sh
router/SKILL-ROUTER.md
memory/MEMORY-SCHEMA.md
workflows/feature/WORKFLOW.md
skills/repository-discovery/SKILL.md
skills/business-rule-protection/SKILL.md
skills/api-integration/SKILL.md
skills/transformers-mappers/SKILL.md
skills/developer-test-architecture/SKILL.md
skills/independent-review/SKILL.md
)

for f in "${required[@]}"; do
  test -f "$f" || { echo "Missing $f"; exit 1; }
done

count="$(find skills -name SKILL.md | wc -l | tr -d ' ')"
test "$count" -ge 30 || { echo "Expected >=30 deep skills; found $count"; exit 1; }

if grep -RniE 'bhive|kenko|sylo|alts-investor|workspace' README.md AGENTS.md CLAUDE.md GEMINI.md skills workflows router memory docs 2>/dev/null; then
  echo "Repository-specific leakage detected."
  exit 1
fi

echo "Verified: $count deep skills; no known project-specific leakage."
