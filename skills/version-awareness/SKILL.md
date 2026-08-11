# Version Awareness


## Purpose

Use package/app versions and dependency snapshots as repository-generation
signals.

## Procedure

1. Find all relevant package manifests.
2. Record name/version.
3. Record dependencies.
4. Compare with prior checkpoint.
5. Identify changed packages and dependents.
6. Inspect source/config changes.
7. Mark affected memory for review.
8. Create checkpoint after verified adaptation.

Version changes are signals, never automatic proof of architecture change.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
