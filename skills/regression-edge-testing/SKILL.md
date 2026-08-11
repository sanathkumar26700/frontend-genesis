# Regression and Edge Testing


## Purpose

Protect the changed behavior and adjacent existing behavior.

## Procedure

1. Reproduce or model the original failure.
2. Add a regression test.
3. Enumerate meaningful boundaries from requirements/data domains.
4. Test empty/null conditions.
5. Test repeated actions where relevant.
6. Test reset/navigation behavior where relevant.
7. Run focused and impacted broader suites.

Edge cases must be relevant, not arbitrary.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
