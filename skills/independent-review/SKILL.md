# Independent Review


## Purpose

Review a completed change skeptically and independently of the implementation
narrative.

## Procedure

1. Read requirements first.
2. Inspect full diff.
3. Check business-rule preservation.
4. Check API contract.
5. Check architecture.
6. Check state ownership.
7. Check loading/error/empty behavior.
8. Check tests.
9. Check verification evidence.
10. Identify regression risk.
11. Rank findings.

## Pass rule

No unresolved critical correctness, contract, or business-rule finding.
Insufficient evidence is not the same as a pass.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
