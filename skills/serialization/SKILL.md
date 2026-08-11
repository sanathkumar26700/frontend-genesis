# Serialization and Deserialization


## Purpose

Handle representation changes without corrupting semantics.

## Procedure

1. Identify source representation.
2. Identify target representation.
3. Find repository utilities.
4. Determine date/time semantics.
5. Determine numeric precision.
6. Determine enum semantics.
7. Determine null/missing semantics.
8. Implement consistently.
9. Add representative and boundary tests.

## High-risk cases

- timezone
- date-only versus timestamp
- DST
- large integers
- decimal precision
- null versus undefined
- empty string
- enum aliases

Never choose a representation from intuition when the contract is ambiguous.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
