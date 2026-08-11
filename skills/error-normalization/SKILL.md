# Error Normalization


## Purpose

Preserve useful API error semantics through the repository's error boundary.

## Procedure

1. Identify transport error shapes.
2. Identify normalization layer.
3. Classify field/global/auth/network/server errors.
4. Identify user-visible behavior.
5. Preserve logging/telemetry metadata where applicable.
6. Preserve retry semantics.
7. Test important error classes.

Never replace differentiated errors with a generic message unless that is the
repository/product behavior.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
