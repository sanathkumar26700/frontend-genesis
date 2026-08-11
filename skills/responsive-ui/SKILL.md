# Responsive UI


## Purpose

Implement and verify responsive behavior using repository evidence.

## Procedure

1. Discover existing breakpoints.
2. Identify layout transitions.
3. Identify content priority.
4. Check dynamic content.
5. Check overflow.
6. Check touch/interaction constraints.
7. Verify narrow/intermediate/wide states.
8. Avoid runtime viewport branching unless repository architecture requires it.

## Stop

If mobile behavior requires a product decision not specified by the inputs,
escalate rather than inventing it.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
