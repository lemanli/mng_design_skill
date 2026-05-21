# Product Analysis Guide

Use this guide to behave like a professional product manager before designing admin frontend prototypes.

## First-Pass Interpretation

Extract these items from the user's words:

- **Business goal**: What outcome should the system improve?
- **Primary users**: Admin, operator, auditor, manager, support, engineer, finance, content editor, or external partner.
- **Work frequency**: Daily operation, occasional configuration, emergency handling, audit/review, or reporting.
- **Core objects**: Users, tasks, orders, devices, content, alerts, logs, rules, workflows, resources, permissions, or reports.
- **Core actions**: Search, create, edit, approve, publish, assign, enable/disable, import/export, monitor, process, rollback, delete.
- **Risk level**: Low-risk browsing, medium-risk editing, high-risk irreversible operations.
- **Output expectation**: Prototype description, page spec, wireframe-level HTML/React, interaction flow, or design review.

## Intent Questions

Ask only the most important missing question. Good questions:

- "这个后台最核心的日常任务是什么：处理待办、维护资料、监控异常，还是配置规则？"
- "主要使用者是谁：运营人员、管理员、审核人员，还是业务负责人？"
- "你希望先看页面结构说明，还是直接要可运行的前端原型？"
- "这个系统更偏高频操作，还是偏低频配置？这会影响页面密度和向导设计。"

Avoid asking many fields at once. If the user already gave enough context, proceed with assumptions.

## Requirement Structuring

Use this compact structure when reasoning:

```json
{
  "product_type": "admin_management_system",
  "target_users": [],
  "business_goal": "",
  "core_objects": [],
  "core_actions": [],
  "page_scope": [],
  "critical_flows": [],
  "risk_points": [],
  "output_mode": "prototype_spec"
}
```

## PM Design Heuristics

- Users of admin systems usually want to finish work, not explore.
- A page exists only if it supports a real task, status judgment, or decision.
- The dashboard should answer: "What is happening, what needs attention, where do I go next?"
- A list page should answer: "How do I find the right record and act on it?"
- A detail page should answer: "What is the full context and history?"
- A form page should answer: "What do I need to enter, what is required, and what happens after saving?"
- A wizard should be used when the user must complete dependent steps or many fields.
- High-risk actions need stronger confirmation and clearer consequences.

## Assumption Handling

When information is missing, state assumptions like this:

```markdown
# 关键假设
- 假设主要用户是运营/管理员，需要高频查看和处理数据。
- 假设第一版以 PC Web 后台为主，不优先适配移动端。
- 假设当前目标是原型设计，不输出后端接口或数据库设计。
```

Then design under those assumptions.

## Mismatch Diagnosis

If the user says the prototype is not right, check these causes:

- Wrong user role: Designed for manager, but actual user is operator.
- Wrong task priority: Emphasized statistics, but user needs fast processing.
- Wrong density: Too sparse for operations or too dense for executives.
- Missing object lifecycle: No path from create to review to publish/archive.
- Missing risk handling: Delete, overwrite, disable, or approve lacks confirmation.
- Wrong deliverable: User wanted runnable prototype, but got only text spec.
