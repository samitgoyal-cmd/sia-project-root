# Capture / Update Chat Notes Prompt

Capture the important content of this chat up to this point into persistent project notes.

Primary target:

- `sia-chats` repo/folder if available and already created

Fallback target if `sia-chats` is not available yet:

- `C:\SIA-Project\SIA-DOCS\00_project_control\`

Create or update notes in a clean structured way using at least these sections:

1. session summary
2. key decisions
3. key learnings
4. open questions
5. next actions
6. prompts or instructions worth reusing

Also update Codex continuity files if the captured notes materially change current state:

- `C:\SIA-Project\codex-control\10_CURRENT_STATE.md`
- `C:\SIA-Project\codex-control\11_ACTIVE_NEXT_STEPS.md`
- `C:\SIA-Project\codex-control\20_SESSION_HANDOFF_LOG.md`

If a dated notes folder exists, place the note there. If not, create a sensible dated note file.

After saving the notes, tell me:

- where the note was saved
- what was captured at high level
- what the most important next action is
