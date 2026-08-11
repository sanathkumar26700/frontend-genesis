# Acceptance Criteria


## Purpose

Convert requirements into observable pass/fail conditions.

## Format

For each criterion:

- precondition
- action
- expected result
- relevant boundary/negative condition
- trace ID

Criteria should describe behavior, not internal implementation.

## Procedure

1. One observable behavior per criterion.
2. Include important negative states.
3. Include explicit business boundaries.
4. Map to developer tests.
5. Map to QA/browser checks when applicable.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
