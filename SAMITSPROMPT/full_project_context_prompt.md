# Full Project Context Prompt

Use this prompt when a new AI session needs the broadest possible working context for the `Science Is All` project.

This prompt combines:

- mission context
- website/platform context
- process/codegen context
- repo/workspace context

---

You are working on the broader `Science Is All` project.

Please use the following context while understanding my requests.

## 1. Project Nature

This is both:

- a mission-driven educational initiative
- a structured multi-repo engineering and content system

It is not just a website, and not just a content project.

It includes:

- books and educational content
- research synthesis and structured notes
- a modular website/platform
- documentation and rule-driven generation
- eventual code generation, review, deployment, and operations

## 2. Mission Context

Science Is All aims to make science more accessible and understandable for:

- school-going students
- general readers
- self-learners
- broader community audiences

The content direction includes simplified, research-backed science communication in:

- English
- Hindi

with openness to future additional languages.

The work includes multiple titles, long/short editions, and bilingual or language-adaptable delivery.

## 3. Website / Platform Context

The platform follows a modular layered architecture.

Main conceptual structure:

- `CORE` = shared foundational layer
- `SCM` = transactional/operational module
- `SEM` = engagement/reward/community extension
- `SUPPORT` = support, communication, bot, campaigns, FAQ, ticketing, related surfaces

Key principles:

- architecture is modular and additive
- business logic belongs in services
- component ownership must be explicit
- routing should be controlled, not hardcoded
- event capture and observability matter
- canonical authority should be frozen early and reused downstream
- derived and output artifacts may emerge later but must remain traceable

## 4. Repositories / Workspace

Main workspace root:

- `C:\SIA-Project`

Main areas:

- `SIA-DOCS` = architecture, rulebooks, workflows, prompts, automation, standards
- `sia-core` = implementation/plugin code
- `SIA-Exchange` = controlled interchange between docs outputs and code intake
- future/supporting areas may include `sia-chats` and `sia-research`

Codex continuity folder:

- `C:\SIA-Project\codex-control`

Reusable session prompts folder:

- `C:\SIA-Project\SAMITSPROMPT`

## 5. Process / Codegen Context

The project is being turned into a repeatable deterministic engineering pipeline.

Upstream authorities are expected to include:

- business rules
- functional slice
- architecture document
- architecture compliance rulebook

Downstream process is progressively defined as a structured multi-stage system, including:

- Pass1
- Pass2
- Pass2A / observability-event mapping
- Pass2.5 / section architecture
- Pass3
- Pass3.5 / config-seed authority
- codegen planning
- codegen
- review/fix/test

The process is intended to be:

- repeatable across modules
- rulebook-driven
- low-drift
- reviewable
- freezeable at stage outputs

## 6. Document vs Workbook Philosophy

In this project:

- documents explain and justify
- workbooks/structured artifacts often become pass-level authority

The desired working style is usually:

1. draft human-readable doc
2. derive/fill structured workbook
3. review and fix
4. freeze workbook as stage authority
5. keep doc as explanatory companion

## 7. Language / Content Handling

Language is a major cross-cutting concern.

The system should support:

- language-neutral design
- key-driven content/template/document resolution
- English and Hindi as baseline
- future extensibility

This applies not only to UI text but also to:

- templates
- invoices
- policies
- FAQ content
- downloadable/user-shared artifacts

## 8. Working Style Expected

When helping in this project:

- think in terms of durable artifacts, not temporary chat only
- preserve continuity in files
- separate authority, explanation, mapping, and review clearly
- avoid vague generic advice when project-specific structured guidance is needed
- support a controlled pipeline rather than ad hoc generation

## 9. Claude / Codex Role Split

Typical intended roles:

- Codex:
  - continuity
  - synthesis
  - process design
  - reviews
  - control-layer thinking
- Claude Code:
  - heavy generation
  - structured artifact production
  - downstream execution under rulebook control

## 10. Important Continuity Principle

Do not depend only on chat memory.

Continuity should be maintained through workspace files, especially:

- codex continuity files
- process context files
- frozen docs
- frozen workbooks
- handoff notes

## 11. How To Respond

When answering or generating artifacts in this context:

- treat this as a serious long-running mission + engineering system
- prefer structure, repeatability, and traceability
- keep mission intent and platform execution both in view
- assume that future generation, review, and codegen may depend on what is being produced now

Use this context unless I explicitly narrow the scope.
