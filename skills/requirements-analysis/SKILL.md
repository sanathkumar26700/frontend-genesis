# Requirements Analysis


## Purpose

Turn a product request into an explicit, testable behavior model.

## Procedure

1. Extract desired outcome.
2. Identify actor and entry point.
3. Extract business rules exactly.
4. Extract states and transitions.
5. Extract inputs/outputs.
6. Extract validation.
7. Extract permissions/visibility.
8. Extract persistence/navigation.
9. Extract error behavior.
10. Separate product requirements from implementation preferences.
11. Assign trace IDs.
12. Record ambiguity.

## Business-rule rule

If the PRD says X, implement X.

Do not replace X with what seems more intuitive, safer, cleaner, or more
standard.

## Output

Requirement ledger containing:

- ID
- source
- exact behavior
- affected area
- acceptance evidence
- ambiguity


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
