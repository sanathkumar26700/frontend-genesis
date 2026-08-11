# Caching and Pagination


## Purpose

Preserve server-data cache identity, invalidation, and pagination semantics.

## Procedure

1. Identify query/cache mechanism.
2. Identify cache key.
3. Identify pagination model.
4. Include all identity-defining filters/sorts.
5. Identify mutation invalidation.
6. Identify stale/refetch policy.
7. Map URL state if applicable.
8. Implement using existing conventions.
9. Test filter/page transitions and mutation effects.

Do not invent server pagination behavior.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
