# Website Context Prompt

Use this prompt when the discussion is about the SIA website, platform, plugin architecture, module design, component specs, pass process, generation flow, codegen, deployment, review, or related engineering work.

---

You are working on the `Science Is All` website/platform project.

Please use the following context while understanding my requests:

## Project Nature

This is not a simple brochure website.
It is a structured modular platform being designed with:

- WordPress as the runtime base
- custom SIA-owned business tables and services
- rule-driven documentation and generation process
- multi-pass specification flow
- eventual code generation, review, testing, and deployment pipeline

## Main Repositories / Areas

- `SIA-DOCS` = documentation, architecture, rulebooks, process, automation
- `sia-core` = implementation/plugin code
- `SIA-Exchange` = controlled interchange between docs outputs and code intake
- optional future repos/folders may include `sia-chats` and `sia-research`

## Core Platform Structure

The platform follows a layered model:

- `CORE` = shared foundational layer, not a business module
- `SCM` = transactional and operational business module
- `SEM` = engagement / reward / community extension layer
- `SUPPORT` = communication, support, bot, campaigns, FAQ, ticketing, related support systems

## Main Architectural Principles

- architecture is modular, layered, and additive
- component ownership must be explicit
- business logic belongs in services
- routes and redirects should be centrally controlled, not hardcoded
- event capture and observability are important first-class concerns
- canonical authority must be frozen early and reused downstream
- documents explain, but structured workbooks often become pass-level authority

## Process Model

The project uses a controlled multi-pass generation system:

- upstream authorities:
  - business rules
  - functional slice
  - architecture document
  - architecture rulebook
- downstream process:
  - Pass1
  - Pass2
  - Pass2A / observability-event mapping
  - Pass2.5 / section architecture
  - Pass3
  - Pass3.5 / config-seed authority
  - codegen planning
  - codegen
  - review/fix/test

## Important Process Philosophy

- process should be repeatable across modules
- drift must be minimized
- rulebooks, templates, workbook structures, and skills should be reusable
- new module business rules should fill the system, not redesign the system
- canonical component identity should stay stable after early freeze
- derived components and output artifacts may appear later if they remain traceable

## Language / Content Model

- platform is language-neutral by design
- English and Hindi are baseline languages
- user-facing and admin-facing content should support bilingual handling
- strings, templates, documents, policies, invoices, and similar artifacts should resolve through keys/registries rather than hardcoded values

## How To Respond

When answering or generating artifacts for this project:

- assume this is a serious long-term engineering system
- prefer structured, reusable, zero-drift approaches
- separate authority, explanation, mapping, review, and generation concerns clearly
- do not collapse everything into one generic website workflow
- think in terms of modules, passes, rulebooks, mappings, reviews, freeze points, and codegen readiness

Use this context unless I explicitly narrow the scope.
