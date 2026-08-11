# PRD Traceability


## Purpose

Maintain bidirectional traceability from requirements to code, tests, and
verification.

## Procedure

1. Assign stable requirement IDs.
2. Map each requirement to implementation areas.
3. Map each requirement to developer tests.
4. Map QA cases where supplied.
5. Map browser/visual verification where relevant.
6. Identify requirements with no evidence.
7. Identify implemented behavior with no requirement basis.
8. Review gaps before completion.

## Important distinction

A file containing code is not evidence of requirement coverage.

A test that executes code is not proof of the intended behavior.

The assertion must prove the behavior.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
