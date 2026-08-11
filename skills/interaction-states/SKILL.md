# Interaction States


## Purpose

Make asynchronous and interactive UI behavior complete.

## State inventory

- initial
- loading
- success
- empty
- validation error
- server error
- disabled
- pending
- cancelled
- stale
- retry/recovery, when specified

## Procedure

1. Identify async boundaries.
2. Enumerate actual possible states.
3. Map transitions.
4. Define user-visible behavior from requirements/design/repository patterns.
5. Prevent duplicate actions.
6. Test important transitions.

Do not invent elaborate recovery behavior merely because it is common.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
