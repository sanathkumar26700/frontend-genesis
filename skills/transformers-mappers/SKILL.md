# Transformers and Mappers


## Purpose

Discover and preserve the boundary between transport representations and
domain/application representations.

## Procedure

1. Locate transformers/mappers/adapters/serializers.
2. Determine direction.
3. Map every field.
4. Handle nested objects.
5. Handle dates/times.
6. Handle enums.
7. Handle null/undefined.
8. Determine default behavior.
9. Keep transformation deterministic where repository convention expects purity.
10. Add mapping tests.

## Boundary rule

A transformer translates representations.

It must not silently invent product behavior.

If it contains business logic, verify that the behavior is explicitly required
and consistent with repository architecture.

## Test strength

For every important field ask:

"If this field mapping were wrong, would a test fail?"


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
