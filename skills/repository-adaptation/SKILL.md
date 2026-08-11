# Repository Adaptation


## Purpose

Refresh repository-specific knowledge after architecture or convention drift.

## Procedure

1. Load affected memory.
2. Inspect current source/configuration.
3. Compare with previous evidence.
4. Classify old pattern:
   - current
   - legacy
   - deprecated
   - replaced
   - experimental
   - scoped exception
5. Update only affected references.
6. Preserve transition history.
7. Verify targeted areas.
8. Create checkpoint.

Never rewrite all memory after a small change.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
