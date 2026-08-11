# Repository Conventions


## Purpose

Extract the conventions a new implementation must follow.

## Discover

- naming
- file placement
- component composition
- hooks/services
- API calls
- state
- forms
- styling
- tests
- errors
- loading/empty states

## Procedure

1. Find recent comparable code.
2. Find configuration-enforced rules.
3. Compare at least two examples when possible.
4. Separate current patterns from legacy patterns.
5. Record the convention and evidence.
6. Assign confidence.

## Rule strength

High:
- enforced by configuration
- repeated in many current examples

Medium:
- repeated pattern without explicit tooling

Low:
- one example or inferred preference

Do not turn low-confidence evidence into a hard repository rule.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
