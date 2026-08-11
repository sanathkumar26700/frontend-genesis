# Forms and Validation


## Purpose

Implement forms with correct validation semantics and repository-native form
architecture.

## Procedure

1. Discover form library.
2. Identify fields and source of truth.
3. Extract exact business validation rules.
4. Separate technical schema validation from product rules.
5. Define null/empty/optional semantics.
6. Define cross-field rules.
7. Map server errors.
8. Define pending/reset behavior.
9. Test valid, invalid, boundary, cross-field, and server-error paths.

## Stop

Do not add a product restriction because it "seems safer".


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
