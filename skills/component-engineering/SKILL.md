# Component Engineering


## Purpose

Build components with clear ownership and stable interfaces.

## Procedure

1. Find analogous components.
2. Define ownership.
3. Define inputs/outputs.
4. Separate data/domain concerns where repository architecture does so.
5. Keep interface minimal.
6. Reuse primitives.
7. Handle states.
8. Handle semantics/focus.
9. Handle responsive behavior.
10. Add behavior tests.

## Anti-patterns

- god components
- boolean-prop explosions
- transport DTOs directly driving UI when domain boundaries exist
- premature generic components


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
