# Browser Verification


## Purpose

Verify critical user-visible behavior in an actual browser when tooling is available.

## Procedure

1. Start the app with repository-native commands.
2. Open affected route.
3. Verify initial state.
4. Execute primary interaction.
5. Verify result.
6. Check relevant loading/empty/error states.
7. Inspect console.
8. Inspect network when relevant.
9. Check responsive behavior when relevant.
10. Record exactly what was verified.

Compilation is not browser verification.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
