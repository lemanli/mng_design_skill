# Workflow Closure Guide

Use this guide when an admin prototype involves tasks, batches, uploads, files, reviews, revisions, or version history. The goal is to design the whole job, not only the list page.

## Closed-Loop Decomposition

Before drawing pages, answer these questions:

- **How does the task start?** Manual creation, import, assignment, scheduled generation, or upstream handoff.
- **What requirements make up the task?** A task may contain multiple collection requirements, each with a purpose, content scope, owner, deadline, and acceptance rule.
- **How many steps complete each requirement?** Example: create requirement -> create batch -> upload/input -> parse/OCR -> correct -> submit review -> revise or pass.
- **What content types exist in each step?** PDF, image, video, Excel, doc/docx, txt, structured table, manual input, QA pair, prompt/image pair.
- **What creates a new version?** Uploading a replacement file, editing recognized text, revising after review, changing structured rows, or rerunning a pipeline.
- **Who reviews and what can they decide?** Pass, needs revision, reject, lock, reassign, or request another upload.
- **What is the terminal state?** Passed into next workflow, rejected and locked, archived, or handed to labeling.

## Object Model for Frontend Thinking

Use this hierarchy for task-like systems:

```text
Task
  Requirement group
    Batch
      Input item / file / manual record
        Page / row / segment / frame
          Version
          Review result
```

Do not flatten this into a single table if the user needs to inspect, compare, correct, or review content.

## Batch Design

A batch is a work unit with its own content mix, contributors, versions, and review state.

Batch pages should show:

- Batch purpose and accepted content types.
- Upload/input methods: file upload, manual input, table import, template entry.
- File or record list with status, version count, owner, and next action.
- Review state: not submitted, pending initial review, needs revision, revised, rejected, passed.
- Lock rules: rejected batches cannot upload again; passed batches should only allow controlled follow-up actions.
- Version chain and review history.

## File and PDF Workflows

For uploaded documents, especially PDF/image scans, design a document processing workspace:

- Page thumbnails on the left.
- Original page preview in the center, simulated if needed.
- Recognized/OCR text or structured extraction on the right.
- Highlight OCR uncertain text, manual corrections, and review comments.
- Let reviewers compare previous version vs current version.
- Show page-level status: pending, corrected, needs revision, rejected, passed.

For Excel/table files:

- Show sheet/table preview.
- Highlight changed cells, invalid cells, and reviewer comments.
- Provide row-level version or correction notes when relevant.

For manual input:

- Show template fields, validation status, edit history, and reviewer comments.

## Version and Diff Rules

Version history is required when users can revise after upload or review.

Show:

- Version number, creator, time, source action, and review result.
- Change summary: uploaded replacement, OCR correction, row edit, field change, page deletion.
- Diff view: previous vs current, with inserted/deleted/modified highlights.
- Review comments attached to the exact version or page/row when possible.

## Review State Machine

Use explicit transitions:

```text
Draft -> Uploaded -> Parsed/OCR Complete -> Pending Initial Review
Pending Initial Review -> Passed -> Next Workflow
Pending Initial Review -> Needs Revision -> Revised -> Pending Initial Review
Pending Initial Review -> Rejected -> Locked
```

Prototype implications:

- "Needs revision" keeps the batch open and creates the next version.
- "Rejected" locks upload/edit actions and must explain why.
- "Passed" should show the next downstream entry, such as labeling or dataset assembly.
- Every review action needs conclusion, comment, reviewer, time, and affected version/page.

## Closure Checklist

Before finalizing a prototype, verify:

- The user can see how the task starts.
- The task is decomposed into requirement groups and batches when needed.
- Each batch shows content type, upload/input method, versions, review status, and next action.
- Uploaded PDFs/images have original page and recognized/corrected page comparison.
- Revisions create visible versions and diff highlights.
- Review decisions change allowed actions.
- Rejected content is locked and cannot be uploaded again.
- Passed content has a clear next workflow.
