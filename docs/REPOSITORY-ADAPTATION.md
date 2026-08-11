# Repository Adaptation

Genesis is deliberately generic.

Example A:

```text
component
 → query library
 → DTO
 → transformer
 → API
 → response transformer
 → domain model
```

Example B:

```text
component
 → generated client
 → generated types
 → domain mapper
```

The generic skills support both by discovering the actual repository pattern.

Adaptation:

```text
detect
 ↓
classify
 ↓
mark stale
 ↓
re-discover
 ↓
compare
 ↓
update memory
 ↓
verify
 ↓
checkpoint
```

Temporary experiments should not become permanent conventions.
