# Human Workflow Design Guide

Use this guide before page planning when an admin prototype must support real people finishing operational work.

## Core Principle

An admin page is not a destination. It is a tool for a person to judge state, change state, hand work to the next person, or close an exception.

Do not start with menu names. Start with the human job:

```text
trigger -> locate work -> understand requirement -> act -> see feedback -> handle exception -> hand off or finish
```

## Required Questions

Answer these before designing pages:

- Who uses this every day, and who uses it only for approval or configuration?
- What event starts the user's work: new assignment, uploaded file, failed parsing, review request, deadline, or abnormal warning?
- What does the user need to know before acting?
- What action changes the business state?
- What feedback proves the action succeeded?
- Who receives the result next?
- What happens when the work is wrong, incomplete, rejected, duplicated, expired, or locked?

## Workflow Map Template

Use this structure for complex work:

```markdown
# 人类工作闭环
| 阶段 | 使用者 | 目标 | 输入/证据 | 页面/控件 | 操作 | 系统反馈 | 下一状态 | 异常路径 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 发起 | 任务负责人 | 明确要收集什么 | 需求说明、类型、截止时间 | 新建任务向导 | 填写任务并分配成员 | 生成任务草稿 | 待建批次 | 信息缺失则保存草稿 |
```

Each row must describe a visible product behavior, not only a business phrase.

## Functional Closure Checklist

For each important requirement, define:

- **Start**: who starts it and from which entry.
- **Input**: what data, file, instruction, or context the user brings.
- **Work object**: task, requirement group, batch, file, page, row, segment, version, or review record.
- **Action**: create, assign, upload, input, parse, correct, submit, review, reject, revise, pass, lock, export.
- **Feedback**: status, validation message, progress, preview, diff, review comment, warning, or next action.
- **Exception**: failed upload, OCR uncertainty, duplicate content, missing field, role conflict, rejected result, expired deadline, locked item.
- **Terminal state**: passed to next workflow, rejected and locked, archived, exported, or returned for revision.

If any item is missing, the prototype is not closed-loop yet.

## Page Responsibility Rules

- **Dashboard/workbench**: what needs attention now and where to jump.
- **List**: find the right work object and start the next action.
- **Detail**: understand context, status, ownership, and history.
- **Batch management**: manage content groups, contributors, deadlines, versions, and review state.
- **Processing workspace**: inspect original input, recognized/parsed result, corrections, diffs, and page/row-level status.
- **Review workspace**: compare evidence, make a conclusion, write comments, and route pass/revision/rejection.
- **Version history**: explain what changed, who changed it, why, and which review result applies.
- **Configuration**: low-frequency setup such as operators, templates, roles, and pipeline definitions.

Do not pile several responsibilities into one page when users need to switch mental modes. Separate pages or drawers are better when the job, actor, or decision changes.

## Huafeng Corpus Example

For a corpus task system, a closed workflow should read like this:

1. The task owner creates a corpus collection task, defines collection requirements, task types, members, roles, deadline, and acceptance rules.
2. The task owner creates one or more batches. Each batch declares allowed input types such as PDF, image, Excel, Word, txt, manual text entry, prompt/image pair, or video instruction.
3. Contributors enter the batch workspace, upload files or manually input records, then see parsing/OCR progress and validation errors.
4. For PDF/image files, contributors open a processing workspace with original page preview, recognized text, correction editor, uncertainty highlights, and page status.
5. Every replacement upload, OCR correction, structured row edit, or post-review revision creates a new version.
6. Contributors submit a batch, file, page, or row for initial review.
7. Reviewers compare original content, recognized/corrected content, version diff, and review history, then choose pass, needs revision, or reject.
8. Needs revision keeps the item editable and creates the next revision cycle. Reject locks upload/edit and explains the reason. Pass sends the result to downstream labeling or dataset assembly.

This example is a thinking model, not fixed page names. Adapt it to the user's actual domain.

## Common Failure Modes

- Designing only task list and create form, while ignoring how work is completed after assignment.
- Treating batch as a status field, while users need to manage content types, files, contributors, and versions.
- Showing uploaded files only as filenames, while the real work requires page/table/frame-level inspection.
- Letting review happen at task level only, while corrections and evidence exist at file/page/row/version level.
- Missing the return path after rejection or revision.
- Missing lock rules after rejection or pass.
- Hiding version differences, forcing reviewers to guess what changed.
