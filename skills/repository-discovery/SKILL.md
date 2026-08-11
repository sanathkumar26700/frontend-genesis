# Repository Discovery


## Purpose

Build a reliable model of the target repository before architecture-sensitive
work.

## Activate when

- initializing Genesis
- entering an unfamiliar area
- starting a non-trivial feature
- changing architecture
- integrating an API
- diagnosing a cross-layer bug
- project memory is stale

## Required evidence

Inspect, where present:

- package manifests and lockfiles
- framework/build configuration
- source layout
- routes
- representative features
- API/data-access code
- state stores/query hooks
- forms
- UI primitives/theme
- tests and test setup
- lint/typecheck/build scripts
- CI/browser tooling

## Procedure

1. Identify repository type: single app, monorepo, workspace, package-oriented
   repository, or mixed.
2. Identify language/runtime/framework.
3. Identify package manager and workspace boundaries.
4. Locate entry points and major source boundaries.
5. Trace one representative read flow.
6. Trace one representative write flow.
7. Find API/data boundaries.
8. Find state boundaries.
9. Find component/design-system boundaries.
10. Find testing architecture.
11. Find verification commands.
12. Sample at least three comparable current features when possible.
13. Record evidence with paths.
14. Record unknowns separately.
15. Store only stable findings in project memory.

## Decision rules

A single unusual file is weak evidence.

Multiple current examples plus configuration are strong evidence.

When two patterns coexist, classify them as:

- current
- legacy
- migration
- experimental
- scoped exception

Do not choose between them by preference.

## Failure modes

- treating root package.json as the whole repository
- learning from generated code as if it were hand-written architecture
- copying legacy patterns into new work
- declaring the repository understood after reading only directory names

## Verification

The discovery is sufficient only when the agent can explain where a requested
feature should live, how its data enters the UI, how state is owned, and how
similar behavior is tested.

## Output

Create/update:

- repository map
- technology map
- command map
- candidate architecture references
- unknowns


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
