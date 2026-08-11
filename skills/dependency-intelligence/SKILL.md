# Dependency Intelligence


## Purpose

Understand dependency and package structure and use version changes as
signals for repository-awareness refresh.

## Procedure

1. Find every relevant package.json.
2. Record package name/version.
3. Record runtime/dev dependencies.
4. Identify workspace relationships.
5. Identify duplicate versions.
6. Map important dependencies to actual usage.
7. Inspect scripts.
8. Compare against previous checkpoint.
9. Identify potentially affected areas.
10. Inspect source changes before updating architectural memory.

## Rule

Semantic version magnitude is a signal, not proof.

A patch can contain an important behavior change.

A major version can be isolated to one package.

Source and configuration evidence determine actual impact.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
