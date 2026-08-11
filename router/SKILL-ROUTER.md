# Skill Router

The router selects the smallest sufficient set of deep skills.

## Mandatory gates for non-trivial work

Consider:

1. repository-discovery
2. requirements-analysis
3. business-rule-protection when product behavior is involved
4. change-impact
5. testing
6. independent-review

## Feature

- requirements-analysis
- prd-traceability
- repository-discovery
- repository-architecture
- component-engineering
- state-classification
- testing
- verification

## API

- api-contract-analysis
- api-integration
- dto-modeling only if DTOs exist
- transformers-mappers only if transformers/mappers exist
- serialization only when representations differ
- caching-pagination when applicable
- error-normalization when applicable

## UI

- design-analysis
- design-system-integration
- component-engineering
- responsive-ui
- interaction-states
- visual-verification

## Testing

- test-strategy
- developer-test-architecture
- qa-test-mapping if QA exists
- regression-edge-testing
- browser-verification when applicable

## Adaptation

- version-awareness
- change-impact
- repository-adaptation
- project-memory
- memory-refresh

Skills describe procedures. `.genesis/` describes repository facts. Keep them separate.
