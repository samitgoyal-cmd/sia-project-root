# Claude Code Prompt - Copy Approved SEM Functional Docs To Reviewed

Read the approved SEM decisions and functional-spec markdown artifacts from `sia-chats`, then copy the approved SEM functional docs into:

`C:\SIA-Project\SIA-DOCS\02_modules\SEM\02_functional_slice\Reviewed`

## Objective

The SEM role/framework decisions have been finalized in `sia-chats` and converted into approved `.md` functional documents.

Your job in this prompt is only to:

1. read the SEM decision log and the latest approved append file for context
2. identify all approved SEM `.md` functional documents created in `sia-chats`
3. copy those approved `.md` documents into:
   `C:\SIA-Project\SIA-DOCS\02_modules\SEM\02_functional_slice\Reviewed`
4. preserve filenames exactly unless there is a clear collision
5. do not rewrite the content unless there is a trivial formatting issue that would break markdown rendering
6. after copying, report:
   - which files were copied
   - any naming collisions
   - any obvious gaps or inconsistencies you noticed

## Important scope rule

Do not generate new ORDs yet.
Do not rewrite the SEM system.
Do not consolidate or merge documents unless explicitly required to complete the copy step.
This prompt is only for moving the approved SEM `.md` functional documents into the `Reviewed` folder so they can be used in the next step.

## Read these context files first

1. `C:\SIA-Project\sia-chats\02_domains\students_engagement\01_logs\SEM_DECISIONS_LOG.md`
2. `C:\SIA-Project\sia-chats\01_daily\2026\2026-04-13\03_approved_for_append.md`

## Then inspect this source folder for approved SEM documents

`C:\SIA-Project\sia-chats\02_domains\students_engagement\02_documents`

## Expected approved SEM docs currently include

- `SEM_Campus_Rep_Role_FINAL_v1.md`
- `SEM_Campus_Visits_v1.md`
- `SEM_BIT_Club_FINAL_v1.md`
- `SEM_User_Architecture_FINAL_v1.md`
- `SEM_Campus_Rep_Onboarding_FINAL_v1.md`
- `SEM_SIA_Scholar_and_SIA_Fellow_FINAL_v1.md`
- `SEM_SIA_Rep_FINAL_v1.md`
- `SEM_SIA_Intern_System_FINAL_v1.md`
- `SEM_SIA_Alumni_FINAL_v1.md`
- `SEM_Forum_System_FINAL_v1.md`
- `SEM_Events_System_FINAL_v1.md`
- `SEM_Gamification_System_FINAL_v1.md`
- `SEM_Forms_System_FINAL_v1.md`
- `SEM_Dashboard_System_FINAL_v1.md`
- `SEM_Onboarding_Flows_FINAL_v1.md`
- `SEM_Certification_System_FINAL_v1.md`

If additional approved SEM `.md` files exist in that folder and are clearly part of today’s approved SEM authority set, include them too.

## Destination

Copy the files into:

`C:\SIA-Project\SIA-DOCS\02_modules\SEM\02_functional_slice\Reviewed`

## Output required

When done, respond with:

1. copied file list
2. skipped file list, if any
3. any issues found
4. confirmation that the `Reviewed` folder now contains the approved SEM functional markdown set

After that, stop and wait for the next prompt.
