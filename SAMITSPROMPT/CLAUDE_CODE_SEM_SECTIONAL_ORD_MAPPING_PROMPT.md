# Claude Code Prompt - Map SEM Functional Specs Into Sectional ORD Set

Read the approved SEM functional markdown documents from:

`C:\SIA-Project\SIA-DOCS\02_modules\SEM\02_functional_slice\Reviewed`

Your job in this prompt is **not** to draft the final ORD documents yet.

Your job is to:

1. inspect the approved SEM functional markdown set
2. determine how many sectional Operating Rules Documents (ORDs) are required
3. keep the set compact and practical:
   - target `6` to `7` sectional ORDs
   - do not explode into too many tiny docs
4. propose the best sectional breakdown
5. define what each ORD will cover
6. define the rule architecture that all sectional ORDs should use
7. identify conflicts, overlaps, missing rules, edge cases, and exception scenarios
8. stop after producing the mapping/plan and gap analysis

Do **not** write the final ORDs in this step.

---

## Main intent

The SEM functional specs have been finalized as approved markdown artifacts.

Now they must be translated into a compact, self-consistent, sectional ORD architecture.

For example:

- one sectional ORD may cover SIA roles and role-rule architecture
- another may cover forum rules
- another may cover gamification
- another may cover events

But you should decide the best final grouping after reading the approved materials.

The output should make the next step easy:
in the next prompt, you will be asked to actually draft those sectional ORDs.

---

## Read these first for authority context

1. `C:\SIA-Project\sia-chats\02_domains\students_engagement\01_logs\SEM_DECISIONS_LOG.md`
2. `C:\SIA-Project\sia-chats\01_daily\2026\2026-04-13\03_approved_for_append.md`

Then read all approved SEM markdown documents in:

`C:\SIA-Project\SIA-DOCS\02_modules\SEM\02_functional_slice\Reviewed`

---

## Required analysis tasks

### Task 1 - Identify the optimal sectional ORD breakdown

Determine:

- how many sectional ORDs are needed
- what each one should be called
- the recommended document IDs
- why this grouping is better than other possible groupings

Constraint:

- target `6-7` sectional ORDs
- avoid both extremes:
  - one giant mega-ORD
  - too many fragmented ORDs

### Task 2 - Define the scope of each sectional ORD

For each proposed ORD, clearly define:

- purpose
- exact topics covered
- exact topics excluded
- which approved functional markdown docs feed into it
- which other sectional ORDs it depends on

### Task 3 - Define the internal rule architecture

Propose a standard internal rule format for all SEM sectional ORDs.

This must include:

- `DOC_ID`
- section numbering model
- rule numbering model
- rule type classification

For example, you should decide whether rules should use formats like:

- `SEM-ORD-01`
- `SEM-ORD-01-R001`

And whether rule types should include categories like:

- `DEFINITION`
- `RULE`
- `ALWAYS`
- `MUST`
- `NEVER`
- `POLICY`
- `EXCEPTION`
- `ESCALATION`
- `NOTE`

You should recommend the best practical standard for this SEM rulebook family.

### Task 4 - Define the first likely ORD

The first and foundational ORD will likely be the one for user/role architecture.

For that likely first ORD, propose:

- recommended title
- document ID
- all major sections
- what exact role entities should get standard `Role_ID` values

You should assign a recommended Role ID scheme for all SIA student-facing roles so later ORDs can refer to them consistently.

This role-ID scheme should cover at least:

- Visitor
- SIA Member
- BIT Club Member
- Learning Intern
- Core Intern
- Campus Rep
- SIA Rep
- SIA Language Rep
- SIA Scholar
- SIA Fellow
- SIA Alumni

Include any other role IDs you think are necessary from the approved SEM design.

### Task 5 - Identify gaps, edge cases, and unresolved rules

Identify all places where the approved SEM functional docs still leave uncertainty, such as:

- missing policy rules
- conflicting interpretations
- ambiguous approval flows
- unclear downgrade/deboarding cases
- unclear exception handling
- cases where multiple docs may overlap
- what-if scenarios not yet covered

For each one, classify it as:

- `Conflict`
- `Missing Rule`
- `Open Edge Case`
- `Needs Clarification`

### Task 6 - Validate self-consistency

Check whether the approved SEM docs are self-consistent.

If you see any tension or contradiction, explicitly flag it rather than silently resolving it.

Examples:

- role independence vs approval powers
- gamification privilege unlocks vs role approval requirements
- forum/public visibility vs privacy rules
- campus-rep onboarding rules vs broader onboarding-flow rules

---

## Expected output format

Return a structured markdown report with these sections:

1. `Recommended Sectional ORD Set`
2. `ORD-by-ORD Scope Mapping`
3. `Recommended Rule Architecture Standard`
4. `Recommended Role ID Scheme`
5. `Likely Foundational ORD-01 Outline`
6. `Conflicts, Missing Rules, and Edge Cases`
7. `Next-Step Readiness for Drafting`

---

## Important working rules

- Do not start drafting the actual sectional ORDs yet.
- Do not rewrite the approved functional markdown docs.
- Do not silently merge conflicts.
- Be explicit where the current functional set is incomplete.
- Prefer a practical, implementation-friendly rulebook family.
- Keep the final recommended sectional set to `6-7` ORDs maximum unless you find a very strong reason otherwise.

---

## End condition

When you finish the mapping and analysis report, stop and wait for the next prompt.
