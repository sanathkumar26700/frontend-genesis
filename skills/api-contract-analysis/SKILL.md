# API Contract Analysis


## Purpose

Create an exact transport contract from supplied API documentation.

## Extract

- method/path
- parameters
- request body
- response body
- status codes
- error bodies
- nullability
- optionality
- enums
- pagination/filter/sort
- auth
- date/time/number formats

## Procedure

1. Read documentation.
2. Cross-check examples.
3. Compare with repository types.
4. Record conflicts.
5. Record missing information.
6. Map the contract to the repository's data architecture.

Never invent an endpoint, field, default, or status code.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
