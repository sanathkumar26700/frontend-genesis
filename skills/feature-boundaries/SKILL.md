# Feature Boundaries


## Purpose

Keep feature logic coherent and avoid unnecessary shared abstractions.

## Procedure

1. Find closest feature boundary.
2. Classify local versus shared behavior.
3. Find existing consumers.
4. Define public interface only when necessary.
5. Keep implementation details private.
6. Promote to shared only with real reuse/evidence.
7. Check package boundaries.

## Decision

"Could this be reused?" is not enough.

Ask:

"Do multiple real consumers require the same stable contract?"


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
