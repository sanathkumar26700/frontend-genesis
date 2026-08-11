# Business Rule Protection


## Purpose

Prevent accidental invention, weakening, or modification of product business
logic.

## Activate for

- validation
- eligibility
- limits
- permissions
- scheduling
- pricing
- workflow rules
- cutoffs
- defaults
- persistence behavior

## Procedure

1. Extract exact rule.
2. Identify enforcement point.
3. Identify UI representation.
4. Identify API implications.
5. Identify boundary values.
6. Write rule-specific tests.
7. Review implementation for added/removed conditions.
8. Compare refactors for behavioral equivalence.

## Stop condition

If a proposed change alters externally observable business behavior and the
requirement does not explicitly authorize it, stop.

Do not guess.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
