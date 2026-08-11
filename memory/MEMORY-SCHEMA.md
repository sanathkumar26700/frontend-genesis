# Project Memory Schema

```yaml
id:
category:
statement:
status: observed | inferred | unknown | stale | contradicted | deprecated
confidence: low | medium | high
evidence:
  - path:
    reason:
first_observed:
last_verified:
repository_checkpoint:
scope:
notes:
```

## Categories

architecture, convention, dependency, api, state, testing, ui, tooling,
decision, failure-assumption.

## Rules

- Evidence must point to real repository artifacts.
- Current source outranks stale memory.
- Contradicted memory cannot silently be used.
- High-impact knowledge requires periodic verification.
- Deprecated knowledge may remain as migration history.
