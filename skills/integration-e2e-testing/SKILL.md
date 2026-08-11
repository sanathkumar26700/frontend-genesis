# Integration and E2E Testing


## Purpose

Verify critical behavior across real module boundaries and user journeys.

## Procedure

1. Select the smallest meaningful boundary-crossing scenario.
2. Use isolated realistic data.
3. Exercise real integration points when practical.
4. Assert user outcomes.
5. Include failure/recovery behavior.
6. Avoid unrelated implementation details.
7. Record environment and results.

Do not claim an E2E check was performed if the environment did not support it.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
