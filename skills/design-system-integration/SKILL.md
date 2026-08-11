# Design-System Integration


## Purpose

Implement UI using the repository's actual design system.

## Procedure

1. Find theme/tokens.
2. Find primitives.
3. Find variants.
4. Find responsive utilities.
5. Find comparable screens.
6. Map design to existing primitives.
7. Extend only when a reusable gap exists.
8. Avoid parallel styling systems.

## Anti-patterns

- introducing another UI library
- duplicating button/input primitives
- hard-coded repeated tokens
- global theme changes for local requirements


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
