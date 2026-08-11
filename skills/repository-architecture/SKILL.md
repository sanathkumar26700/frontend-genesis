# Repository Architecture


## Purpose

Discover actual module boundaries and dependency direction and preserve them
during implementation.

## Procedure

1. Identify application/package boundaries.
2. Identify feature boundaries.
3. Identify shared primitives and services.
4. Trace imports for comparable features.
5. Identify public module/package interfaces.
6. Identify dependency direction.
7. Identify cross-cutting infrastructure.
8. Map the requested change to the smallest valid owner.
9. Identify consumers before changing shared code.
10. Decide whether a new abstraction is required.

## Decision tree

```text
Does an existing abstraction own this behavior?
 ├─ yes → reuse/extend it
 └─ no
      ↓
Does an existing feature boundary own it?
 ├─ yes → implement locally
 └─ no
      ↓
Is the behavior genuinely shared?
 ├─ yes → consider shared abstraction
 └─ no → keep it local
```

A new abstraction needs evidence of at least one real reuse case or a clear
architectural boundary requirement.

## Common risks

- circular dependencies
- barrel exports hiding dependency direction
- shared folders becoming dumping grounds
- global utilities containing feature business logic
- moving code across package boundaries unnecessarily

## Verification

Check imports, public exports, affected consumers, tests, and build/typecheck
after implementation.

## Output

Produce a placement decision and affected consumer list.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
