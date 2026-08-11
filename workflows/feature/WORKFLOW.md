# Feature Workflow

## Gate 0 — Awareness

Check repository state, package versions, and stale high-impact memory.

## Gate 1 — Product contract

Read PRD/product requirements. Extract rules, states, acceptance criteria,
ambiguities, and trace IDs.

## Gate 2 — Repository contract

Discover architecture, conventions, feature boundary, state, API, DTOs,
transformers, UI patterns, and tests.

## Gate 3 — Design

Analyze supplied designs and map them to existing primitives.

## Gate 4 — Test architecture

Import QA cases when present. Otherwise design strong developer tests.

## Gate 5 — Implementation

Implement the smallest repository-native change.

## Gate 6 — Verification

Run typecheck/lint/build/tests and browser/visual checks where available.

## Gate 7 — Independent review

Review the result against requirements and repository architecture.

## Gate 8 — Memory

Update only stable evidence-backed knowledge and create a checkpoint.
