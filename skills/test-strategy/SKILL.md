# Test Strategy


## Purpose

Choose test levels based on risk and boundaries.

## Procedure

1. Identify changed behavior.
2. Identify risk.
3. Find repository test architecture.
4. Choose unit/component/integration/E2E.
5. Include negative and edge paths.
6. Map tests to requirements.
7. Run relevant checks.

## Rule

The right question is not "How much coverage?"

It is:

"What evidence would convince us this behavior cannot silently regress?"


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
