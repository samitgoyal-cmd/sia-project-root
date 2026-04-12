# Active Next Steps

## Immediate Next Steps (in order)

### Step 1 - Freeze Pass1 deliverable specs

Define and review:

- Pass1 Master Spec section structure
- `P1-002` Pass1 Existing Component Reuse and Delta Mapping Workbook spec
- `P1-003` Pass1 Rule Mapping Workbook spec

These should answer:

- what exact canonical component details Pass1 must lock
- what cross-mappings Pass1 must decide
- which mappings are deferred to Pass2 / Pass2.5
- what observability/event relevance flags Pass1 must capture

### Step 2 - After Pass1 specs are reviewed

Use the frozen Pass1 artifact specs to determine:

- whether any existing skill can be reused/refined for Pass1 workbook generation/review
- what new Pass1 generator/reviewer skills actually need to be written

### Step 3 - Then move to gate-package specs

Define and review:

- W1 Review Package spec
- W2 Review Package spec

W3/W4 can remain later unless needed sooner.

## After That

1. formalize `P25-006`, `P25-007`, and `P25-008` generation/refinement path
2. align `SIA_Claude_OS_v2.0.md` and Skill `00-orchestrator` to the finalized stage model
3. write/refine the required generator and reviewer skills in priority order
4. continue freezing artifact-level specs before skill implementation

## Current Working Principle

Freeze artifact specs first, then generation/review skills.

Do not write new Pass1, W1, or W2 skills until their target artifact structures are explicitly locked.

## Session Starter Instruction

When a new Codex session begins, first ask:

"Load codex continuity files and continue from current state before doing new work."
