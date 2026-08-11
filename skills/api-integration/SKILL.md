# API Integration


## Purpose

Implement API access through the repository's established data boundary.

## Discovery gate

Before implementation determine whether the repository uses:

- API clients
- services
- query/mutation libraries
- generated clients
- DTOs
- transformers
- mappers
- domain models
- cache layers
- error normalization

## Procedure

1. Read API contract.
2. Discover actual integration architecture.
3. Trace request direction.
4. Trace response direction.
5. Preserve auth.
6. Preserve caching/invalidation.
7. Preserve error handling.
8. Keep transport details out of UI when the repository has a domain boundary.
9. Implement.
10. Add contract/data-flow tests.
11. Add user behavior tests.

## Important

If DTOs/transformers exist, preserve them.

If they do not exist, do not introduce them solely because this skill mentions
them.

## Stop

Missing API semantics or an unclear repository integration boundary that changes
behavior.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
