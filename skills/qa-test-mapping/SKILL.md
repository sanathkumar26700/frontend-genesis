# QA Test Mapping


## Purpose

Turn supplied QA scenarios into traceable developer and acceptance coverage.

## Procedure

1. Preserve every QA case's intent.
2. Map to requirement IDs.
3. Choose developer/component/integration/browser verification.
4. Identify data/setup.
5. Identify exact expected assertions.
6. Identify gaps.
7. Track status: automated, manual, blocked, or not applicable with reason.

If QA and PRD conflict, surface the conflict.
Do not silently rewrite either artifact.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
