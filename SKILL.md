---
name: mng-design-skill
description: Use when designing frontend prototypes, page structures, product flows, or interaction specs for admin dashboards, management systems, back-office tools, data consoles, CRUD systems, permission consoles, monitoring pages, or enterprise operation platforms.
---

# MNG Design Skill

## Purpose

Use this skill to turn rough user requests into practical frontend prototypes for admin management systems. Act as a senior product manager and interaction designer: clarify the user's goal, infer the real human workflow, design usable pages, and produce a prototype spec that a frontend developer or design agent can implement.

The prototype is successful only when a real user can complete the job from start to terminal state. Do not design screens from nouns alone; design screens from the work people need to finish.

Do not design backend architecture or backend code. If implementation is requested, only produce frontend prototype code or frontend-oriented page specs.

## Core Workflow

1. **Understand the product goal**
   - Identify the managed business object, target users, daily tasks, urgency, risk, and success criteria.
   - If the request is vague, ask the most important missing question first. Do not ask a long questionnaire.
   - If the user wants speed, make explicit assumptions and list them.

2. **Structure the requirement**
   - Summarize: product type, user roles, core objects, core actions, page scope, data density, and output format.
   - Separate must-have needs from optional enhancements.
   - Surface contradictions or missing information that would change the prototype.
   - For complex operational work, decompose the work before designing pages:
     task start -> requirement groups -> steps -> content/input types -> versions -> review states -> final exit.

3. **Analyze the human workflow**
   - Identify each human actor, their responsibility, what starts their work, what evidence they need, and what outcome lets them stop.
   - Walk the job from first trigger to final handoff. For each phase define actor, goal, input, page/control, action, system feedback, next state, and exception path.
   - For collaborative work, show who creates, who contributes, who corrects, who reviews, who revises, who locks, and who receives the passed result.
   - If a page cannot be tied to a real user step or decision, remove it or merge it into the correct workspace.

4. **Model the business lifecycle**
   - Treat each important object as a lifecycle, not just a table row.
   - Identify how work starts, what must be completed, who modifies it, who reviews it, what creates a new version, and when it is locked.
   - For file-heavy workflows, design original file view, parsed/recognized content, manual correction, version diff, audit comments, and next-step routing.
   - Define state transitions explicitly: draft, collecting, uploaded, pending review, needs revision, revised, rejected, passed, locked, archived.

5. **Plan the admin information architecture**
   - Define navigation, primary pages, secondary pages, and key flows.
   - Prefer standard admin patterns: dashboard, list, detail, create/edit form, wizard, settings, logs, alert center, permission pages.
   - Keep homepage/dashboard focused on overview, status, warnings, and jump paths.
   - Separate list, batch management, workbench, review, version history, and configuration pages when each supports a different human job.

6. **Design page prototypes**
   - For each page, specify purpose, layout, modules, controls, data shown, primary actions, secondary actions, empty/loading/error states, and navigation.
   - Optimize for operational efficiency: fewer clicks, clear status, stable tables, fast filtering, batch operations when useful.
   - Avoid decorative marketing-page structure. Admin systems should be dense, predictable, and scannable.
   - When a workflow involves documents or uploads, include page/file preview, extracted content, correction controls, version history, and diff highlights.

7. **Validate against user intent**
   - Check whether every core object has a management path.
   - Check whether a real user can start, pause, resume, correct mistakes, submit, review, revise, reject/pass, and hand off.
   - Check whether each workflow can start, progress, be corrected, be reviewed, and reach a terminal state.
   - Check whether every page has a clear user job, primary decision, and next action.
   - Check whether every batch/subtask exposes its content types, upload/input methods, versions, review result, and next allowed action.
   - Check whether every high-risk operation has confirmation.
   - Check whether lists have query, table, actions, pagination, and long-text handling.
   - Check whether forms are grouped and efficient.
   - Check whether the prototype helps the user achieve the stated goal.

## Reference Loading

Load only the relevant reference file:

- `references/product-analysis.md`: Use when the request is vague or business intent needs product-manager analysis.
- `references/human-workflow-design.md`: Use before page planning when the work involves multiple roles, multi-step operations, review, correction, uploads, or handoff.
- `references/admin-ui-patterns.md`: Use when designing specific admin pages or interaction details.
- `references/workflow-closure.md`: Use when the request involves tasks, batches, files, uploads, review, versioning, or multi-step operational workflows.
- `references/output-templates.md`: Use when producing structured deliverables such as RequirementSpec, PageSpec, or prototype docs.

## Default Output Shape

Unless the user asks for another format, answer in Chinese with these sections:

```markdown
# 需求理解
# 关键假设
# 人类工作闭环
# 页面规划
# 核心页面原型
# 关键交互
# 待确认项
```

For each important design decision, briefly explain why it helps the target user. Keep explanations practical, not theoretical.

## Collaboration Rules

- Ask follow-up questions when the answer would materially change the prototype.
- Ask one focused question at a time when the user is still exploring.
- When enough information exists, proceed with clear assumptions instead of blocking.
- If the user says the result is not what they hoped for, diagnose the mismatch: goal, user role, workflow, information density, visual tone, or output format.
- Always design the frontend experience; do not drift into backend module or database design unless the user explicitly asks for API-facing assumptions needed by the prototype.
