# Ambiguity Detection


## Purpose

Find missing or conflicting information before it becomes hallucinated
behavior.

## Classify ambiguity

- cosmetic
- implementation-local
- contract-level
- business-critical

## Procedure

1. Identify undefined terms.
2. Identify conflicting values.
3. Identify missing states.
4. Compare PRD/design/API/QA.
5. Determine impact.
6. Escalate when external behavior changes.
7. For harmless technical ambiguity, choose the least invasive repository-native
   interpretation and record it.

## Output

Exact question, conflicting evidence, impact, and status.


## Universal skill rules

- Treat repository evidence as potentially stale.
- Distinguish Observed, Inferred, and Unknown.
- Do not invent business requirements.
- Do not invent undocumented API behavior.
- Prefer existing repository patterns.
- Do not introduce dependencies or abstractions without justification.
- Report uncertainty at the decision boundary where it matters.
- Never claim verification that was not actually performed.
