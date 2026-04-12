# Parallel Session Register

## Purpose

Track active parallel Codex sessions so they do not unknowingly overlap.

## Rule

If more than one Codex session is active, each session should register itself here before substantial work starts.

## Fields

- Session_ID
- Started_At
- Operator
- Primary_Focus
- Target_Folders
- Write_Scope
- Status
- Notes

## Active Sessions

| Session_ID | Started_At | Operator | Primary_Focus | Target_Folders | Write_Scope | Status | Notes |
|------------|------------|----------|---------------|----------------|------------|--------|-------|
| codex-2026-04-08-process-freeze | 2026-04-08 | Codex | Freeze high-level engineering/codegen pipeline and sync continuity docs | `C:\SIA-Project\SIA-DOCS\07_automation\templates`; `C:\SIA-Project\codex-control` | write-doc | complete | Session started from `session_start_prompt.md`; high-level pipeline definition synced to continuity |

## Status Values

- planned
- active
- blocked
- review
- complete
