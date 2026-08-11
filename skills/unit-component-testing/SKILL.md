# Unit and Component Testing


## Purpose

Test pure logic and UI component behavior at the lowest useful boundary.

## Procedure

1. Identify observable behavior.
2. Find repository test helpers.
3. Use realistic fixtures.
4. Cover valid/invalid/boundary inputs.
5. For UI, test user-visible interactions and states.
6. Avoid unnecessary implementation-detail coupling.
7. Keep tests deterministic.

Prefer behavior assertions over internal state assertions.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
