# Frontend Genesis v0.1.0

Frontend Genesis is a repository-native engineering system for AI coding
agents. It turns a general-purpose coding model into a structured,
repository-aware frontend engineering agent.

It is intentionally repository-agnostic. It does not assume a company,
application, framework, UI library, state library, API architecture, package
manager, or monorepo layout.

## Core model

```text
User request
    ↓
Requirement model
    ↓
Design / API / QA evidence
    ↓
Repository discovery
    ↓
Skill routing
    ↓
Impact analysis
    ↓
Test design
    ↓
Implementation
    ↓
Verification
    ↓
Independent review
    ↓
Evidence-backed memory update
    ↓
Repository checkpoint
```

## v0.2: from prompt collection to operational skills

v0.1 was a scaffold. v0.2 makes the skills deep enough for a capable but
context-limited model to execute work without relying on unstated expert
knowledge.

Every deep skill contains:

1. Purpose
2. Activation conditions
3. Required context
4. Evidence to collect
5. Mental model
6. Decision procedure
7. Implementation procedure
8. Edge cases
9. Anti-patterns
10. Verification
11. Outputs
12. Stop/escalation conditions
13. Self-review checklist
14. Interaction with other skills

## Authority model

| Concern                    | Primary authority                   |
| -------------------------- | ----------------------------------- |
| Business behavior          | Supplied PRD/product requirements   |
| Visual behavior            | Supplied design/wireframes/spec     |
| Transport/data contract    | Supplied API documentation/contract |
| Implementation conventions | Current repository evidence         |

The agent must never invent business behavior.

If requirements conflict, the conflict is surfaced.

If API documentation is incomplete, missing behavior is not fabricated.

Repository knowledge determines **how** to implement, not **what the product
should do**.

## Installation

```bash
./install.sh /absolute/path/to/frontend-repository
```

The installer creates project-local state:

```text
target-repo/
├── .genesis/
│   ├── constitution.md
│   ├── requirements/
│   ├── repository/
│   ├── architecture/
│   ├── references/
│   ├── decisions/
│   ├── checkpoints/
│   ├── evidence/
│   ├── changes/
│   ├── tests/
│   └── state/
│
├── inputs/
│   ├── product/
│   ├── design/
│   ├── api/
│   └── qa/
│
└── existing application
```

The generic project contains procedures. `.genesis/` contains knowledge
discovered from the target repository.

## Repository adaptation

Genesis discovers rather than assumes:

- framework/runtime
- package manager
- monorepo/workspace structure
- apps/packages
- routing
- API client
- DTOs
- request/response transformers
- mappers
- generated types
- domain models
- state management
- forms/validation
- styling/design system
- component patterns
- error handling
- testing
- browser tooling
- build/lint/typecheck commands

For example, if a repository uses:

```text
UI
 ↓
Domain Model
 ↓
Request Transformer
 ↓
Request DTO
 ↓
API Client
 ↓
Response DTO
 ↓
Response Transformer
 ↓
Domain Model
```

Genesis records and follows it.

If another repository uses:

```text
UI
 ↓
Query Hook
 ↓
Generated Client
 ↓
Generated Types
```

Genesis follows that instead.

The generic skill does not force DTOs, transformers, RTK Query, React Query,
Redux, Zustand, or any other technology.

## Continuous awareness

Repository changes are treated as evidence first.

```text
Git / filesystem / package versions
          ↓
Change detection
          ↓
Change classification
          ↓
Affected knowledge
          ↓
Stale markers
          ↓
Targeted re-discovery
          ↓
Evidence confirms change?
      ┌──────┴──────┐
      ↓             ↓
     yes            no
      ↓             ↓
 update memory   retain memory
          ↓
      checkpoint
```

A package version change is a signal, not proof of architectural change.
A source change can matter even if no package version changes.

## Skill groups

```text
foundation/
  repository-discovery
  repository-architecture
  repository-conventions
  dependency-intelligence
  change-impact
  project-memory

product/
  requirements-analysis
  prd-traceability
  business-rule-protection
  ambiguity-detection
  acceptance-criteria

design/
  design-analysis
  design-system-integration
  responsive-ui
  interaction-states

frontend/
  component-engineering
  feature-boundaries
  state-classification
  state-management
  forms-validation

data/
  api-contract-analysis
  api-integration
  dto-modeling
  transformers-mappers
  serialization
  caching-pagination
  error-normalization

testing/
  test-strategy
  developer-test-architecture
  qa-test-mapping
  unit-component-testing
  integration-e2e-testing
  regression-edge-testing

verification/
  browser-verification
  visual-verification
  independent-review

operations/
  version-awareness
  repository-adaptation
  memory-refresh
```

## Feature workflow

```text
1. Check repository awareness
2. Read requirements
3. Build requirement contract
4. Detect ambiguity/conflict
5. Discover repository architecture
6. Route relevant skills
7. Build impact map
8. Design developer tests
9. Implement
10. Run static checks
11. Run tests
12. Browser/visual verification when available
13. Independent review
14. Update stable memory
15. Create checkpoint
```

## Testing principle

When QA cases exist, map them to executable verification.

When QA cases do not exist, derive strong developer tests from:

- explicit requirements
- business rules
- boundaries
- state transitions
- failure modes
- API behavior
- regression risk
- important user interactions

Coverage percentage is not proof of correctness.

A useful test should fail if an important requirement is accidentally broken.

## Current status

| Capability                              | Status                      |
| --------------------------------------- | --------------------------- |
| Deep operational skills                 | Implemented                 |
| Requirement traceability                | Implemented                 |
| Business-rule protection                | Implemented                 |
| Repository discovery                    | Implemented                 |
| DTO/transformer adaptation              | Implemented                 |
| State classification                    | Implemented                 |
| Strong developer-test architecture      | Implemented                 |
| QA-to-test mapping                      | Implemented                 |
| Change-impact model                     | Implemented                 |
| Version-aware checkpoints               | Implemented                 |
| Evidence-backed memory model            | Implemented                 |
| Stale-reference model                   | Implemented                 |
| Full automatic adaptation orchestration | WIP                         |
| Browser automation adapter              | Environment dependent / WIP |
| Visual regression automation            | WIP                         |
| Independent verifier agent              | WIP                         |
| Transactional rollback                  | WIP                         |
| CI integration                          | Future                      |
| Multi-agent coordination                | Future                      |

## Non-goals

Genesis is not:

- a frontend framework
- a UI library
- a code generator
- a replacement for developers
- a universal architecture enforcer
- a reason to add dependencies
- a source of undocumented product requirements
>>>>>>> 6814d76 (feat: frontend genesis v1)
