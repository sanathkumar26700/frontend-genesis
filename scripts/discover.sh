#!/usr/bin/env bash
set -euo pipefail

TARGET="$(cd "${1:-.}" && pwd)"
G="$TARGET/.genesis"

mkdir -p "$G/discoveries/generated"

{
  echo "# Repository Discovery"
  echo
  echo "Generated: $(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  echo
  echo "## Top-level"
  find "$TARGET" -maxdepth 1 -mindepth 1 -not -path "$TARGET/.git" -printf '%f\n' 2>/dev/null | sort || true
  echo
  echo "## package.json files"
  find "$TARGET" -name package.json -not -path '*/node_modules/*' -not -path '*/.git/*' -print | sort
  echo
  echo "## lockfiles"
  find "$TARGET" -maxdepth 5 \( -name package-lock.json -o -name yarn.lock -o -name pnpm-lock.yaml -o -name bun.lock -o -name bun.lockb \) -not -path '*/node_modules/*' -print | sort
  echo
  echo "## likely source boundaries"
  find "$TARGET" -maxdepth 5 \( -type d -name src -o -type d -name app -o -type d -name pages -o -type d -name components \) -not -path '*/node_modules/*' -not -path '*/.git/*' -print | sort | head -200
} > "$G/discoveries/generated/repository.md"

{
  echo "# Package Discovery"
  while IFS= read -r f; do
    echo
    echo "## $f"
    if command -v node >/dev/null 2>&1; then
      node -e "const p=require(process.argv[1]); console.log(JSON.stringify({name:p.name,version:p.version,private:p.private,dependencies:p.dependencies||{},devDependencies:p.devDependencies||{},scripts:p.scripts||{}},null,2))" "$f" 2>/dev/null || cat "$f"
    else
      cat "$f"
    fi
  done < <(find "$TARGET" -name package.json -not -path '*/node_modules/*' -not -path '*/.git/*' -print | sort)
} > "$G/discoveries/generated/packages.md"

for n in architecture conventions dependencies api-patterns testing-patterns ui-patterns repository-map; do
  if [ ! -f "$G/$n.md" ]; then
    cat > "$G/$n.md" <<EOF
# ${n//-/ }

Status: Unknown

Populate this file from repository evidence. Do not treat this placeholder as a fact.
EOF
  fi
done

cat > "$G/constitution.md" <<'EOF'
# Frontend Genesis Project Constitution

## Authority

- Business behavior: supplied product requirements.
- Visual behavior: supplied design evidence.
- Transport behavior: supplied API contract.
- Implementation conventions: current repository evidence.

## Hard rules

1. Never invent business logic.
2. Never invent undocumented API semantics.
3. Prefer repository-native patterns.
4. Treat memory as potentially stale.
5. Verify before claiming completion.
EOF
