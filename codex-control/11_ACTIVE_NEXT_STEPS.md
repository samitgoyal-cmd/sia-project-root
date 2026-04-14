# Active Next Steps

## Immediate Next Steps (in order)

### Step 0 - Cross-laptop sync check

Before starting new design work on another machine, verify:

- root workspace-control repo is pulled
- `SIA-DOCS` is pulled
- `sia-chats` is pulled
- `sia-research` is pulled if its pending `.docx` / push blocker has been resolved
- `sia-core` remains manual/separate

### Step 1 - SEM rules review and freeze

Current exact SEM checkpoint:

- `SEM_Master_Rules_Sheet_FULL_v5_traceability.xlsx` is generated and stored in `SIA-DOCS\02_modules\SEM\01_ord\Drafts\`
- FULL_v5 is the current working version: **973 rules** across all 7 ORDs with:
  - v2 validation flags (dedup, conflict, gap, edge case, decision)
  - v4 enforcement classification (META 27, SYSTEM 625, HYBRID 132, HUMAN 189)
  - v5 traceability: Pass1_Component_Map, Pass2_Contract_Map, Pass3_Code_Map, Implemented_At_Layers, Expected_Layers_Met, Implementation_Status (935 NOT_STARTED, 11 BLOCKED, 27 N/A), Remaining_Work, Validation_Notes
  - Codegen_Eligible: YES 485 / PARTIAL 272 / NO 216
- All generation scripts saved to `SIA-DOCS\02_modules\SEM\10_archive\` (build_full_v2 through build_full_v5_traceability.py — fully restartable)
- Validation annotations saved to `SIA-DOCS\02_modules\SEM\10_archive\FULL_v2_annotations.json`

Version history (all in `SIA-DOCS\02_modules\SEM\01_ord\Drafts\`):
- FULL_v2 — validated flags only
- FULL_v3_enforcement — enforcement type/layer/strategy
- FULL_v4_implementation — deep enforcement + 10 new columns (META detection, multi-layer, domain-aware components)
- **FULL_v5_traceability — current authority** — + 8 traceability columns (38 total columns)

Open items in FULL_v2 requiring Founder review (in priority order):

1. **Decisions Required (44 items)** — review `Decisions Required` sheet.
   Key items include:
   - City/State Rep tier — placeholder; activate, defer, or remove from ORD scope
   - Define "valid operational reason" for SIA Rep override of Campus Rep activation
   - Scholar primary eligibility criteria (minimum requirements)
   - SIA Rep inactivity review threshold
   - Language Rep eligibility criteria and geographic scope
   - BIT Club membership fee model — active or deferred
   - Core Intern cohort size and selection threshold
   - Fellow inactivity threshold and downgrade process
   - Certification expiry duration and renewal process
   - Badge manual-award vs automated-trigger split
   - Appeal maximum review timeline

2. **Conflicts (46 rules, 5 conflict codes)** — review `Flags Summary` sheet, Conflict_Flag=Yes rows:
   - CF-001 (9 rules): on-demand cert validity vs verification page current-status display
   - CF-002 (8 rules): SIA Rep override threshold undefined — MUST vs EXCEPTION contradiction
   - CF-003 (3 rules): Scholar + Fellow inactivity downgrade interaction
   - CF-004 (23 rules): Campus Rep extension permitted (no max) vs 21-day escalation ceiling
   - CF-EXCL (3 rules): EXCEPTION rules overriding NEVER/MUST in same section without bounded scope

3. **Dedup merges (192 rules, 12 groups)** — review `Dedup Review` sheet:
   - DG-001 (33 rules): Scholar/Fellow eligibility overlap ORD-01 vs ORD-02
   - DG-002 (2 rules): Campus/Field Rep duties ORD-01 vs ORD-02
   - DG-003 (19 rules): Volunteer onboarding ORD-01 vs ORD-07
   - DG-004 (42 rules): Event point-award rules ORD-04 vs ORD-05
   - DG-005 (54 rules): Forum/content engagement points ORD-03 vs ORD-05
   - DG-006 (4 rules): Badge eligibility ORD-05 vs ORD-06
   - DG-007 (27 rules): Dashboard/visibility ORD-01 vs ORD-07
   - DG-010 through DG-014: auto-detected cross-ORD Jaccard matches (2–3 rules each)

4. **Gaps (26 items)** — review Gap_Flag=Yes rows; items involving undefined qualifiers ("valid reason", "substantial", "appropriate", "sufficient") and missing thresholds

5. **Edge Cases (50 items)** — review Edge_Case_Flag=Yes rows; items with override/waiver/unless/manual-review language needing explicit implementation paths

Next exact SEM step after Founder review:

- Resolve all Decision_Required and Conflict_Flag items
- Execute Duplicate-Review merges (or mark as intentional cross-references)
- Produce v3 (frozen) version
- Then generate the SEM functional slice spec from the frozen v3 rules

### Step 2 - Freeze Pass1 deliverable specs

Define and review:

- Pass1 Master Spec section structure
- `P1-002` Pass1 Existing Component Reuse and Delta Mapping Workbook spec
- `P1-003` Pass1 Rule Mapping Workbook spec

These should answer:

- what exact canonical component details Pass1 must lock
- what cross-mappings Pass1 must decide
- which mappings are deferred to Pass2 / Pass2.5
- what observability/event relevance flags Pass1 must capture

### Step 3 - After Pass1 specs are reviewed

Use the frozen Pass1 artifact specs to determine:

- whether any existing skill can be reused/refined for Pass1 workbook generation/review
- what new Pass1 generator/reviewer skills actually need to be written

### Step 4 - Then move to gate-package specs

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

Freeze artifact/rule specs first, then downstream generation/review skills and derived functional slices.

Do not write new Pass1, W1, or W2 skills until their target artifact structures are explicitly locked.
Do not assume `sia-research` is synced on the second laptop until its pending push blocker is confirmed resolved.
Do not regenerate SEM functional slice documents from partial rules while the SEM master rules sheet is still under manual review.

## Session Starter Instruction

When a new Codex session begins, first ask:

"Load codex continuity files and continue from current state before doing new work."
