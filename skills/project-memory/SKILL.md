# Project Memory


## Purpose

Maintain durable, evidence-backed knowledge without turning every edit into
a permanent convention.

## Memory states

- Observed
- Inferred
- Unknown
- Stale
- Contradicted
- Deprecated

## Procedure

1. Load existing entry.
2. Compare current evidence.
3. Preserve provenance.
4. Mark stale or contradicted knowledge.
5. Update only confirmed facts.
6. Record important architectural transitions.
7. Record failed assumptions likely to recur.
8. Link entries to a repository checkpoint.

## Required metadata

```yaml
statement:
status:
confidence:
evidence:
first_observed:
last_verified:
repository_checkpoint:
scope:
```

## Rule

Memory is a durable summary of repository state. It is not a substitute for
current source inspection.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
