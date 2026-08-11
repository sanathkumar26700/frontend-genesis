# DTO Modeling


## Purpose

Model request/response transport representations when the repository uses
DTOs or equivalent transport types.

## Procedure

1. Locate request DTOs.
2. Locate response DTOs.
3. Determine generated versus handwritten.
4. Preserve exact field names.
5. Preserve optional/null semantics.
6. Map transport representation to domain representation.
7. Keep product rules out of DTO definitions.
8. Add representative fixtures/tests.

## Common traps

- changing API field names for convenience
- making optional fields required
- embedding business defaults
- conflating DTO and domain model


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
