# State Classification


## Purpose

Classify every new piece of state before choosing its owner.

## Classes

- local UI
- derived
- form
- URL
- server/cache
- shared client
- persisted

## Procedure

For each state item identify:

1. source of truth
2. owner
3. lifetime
4. consumers
5. update path
6. persistence requirement
7. repository mechanism

## Rule

Derived state should not become a second source of truth unless repository
architecture explicitly requires it.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
