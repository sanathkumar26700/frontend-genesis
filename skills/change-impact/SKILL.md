# Change Impact Analysis


## Purpose

Bound the risk of a requested or observed change before implementation.

## Procedure

1. Identify direct target.
2. Find consumers.
3. Find shared dependencies.
4. Find public exports.
5. Find routes/config/build references.
6. Find API/data contracts.
7. Find tests.
8. Classify scope: local, feature, package, repository.
9. Identify regression-sensitive behavior.
10. Produce a concrete impact map.

## High-impact signals

- shared primitive change
- public package API change
- API contract change
- state architecture change
- dependency change
- global styling/configuration
- authentication change

## Verification

Targeted tests plus broader tests proportional to impact.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
