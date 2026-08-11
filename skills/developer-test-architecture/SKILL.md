# Developer Test Architecture


## Purpose

Create strong developer-level tests, especially when QA cases are absent.

## Procedure

1. Extract every critical requirement.
2. Enumerate explicit boundaries.
3. Enumerate invalid inputs.
4. Enumerate state transitions.
5. Enumerate API failure paths.
6. Enumerate duplicate/concurrency risks where relevant.
7. Identify regression-sensitive existing behavior.
8. Choose test levels.
9. Implement tests.
10. Audit test strength.

## Critical test question

If the implementation accidentally removed a business rule, would a test fail?

If the answer is no, the test suite is probably insufficient for that rule.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
