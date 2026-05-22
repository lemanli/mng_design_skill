# Admin UI Patterns

Use these patterns when designing frontend prototypes for management systems.

## Global Layout

Default PC admin layout:

- Top bar: system name, global search if useful, notifications, user menu.
- Sidebar: primary navigation grouped by business domain, not by technical layer.
- Main area: page title, context actions, filters, content, pagination or footer actions.
- Breadcrumbs: useful for deep detail/edit flows.

Avoid landing-page heroes, marketing copy, large decorative cards, and vague feature descriptions.

## Dashboard / Workbench

Purpose:

- Summarize system state.
- Expose urgent work and abnormal conditions.
- Provide jump paths into filtered lists or details.

Recommended modules:

- KPI summary cards: total, pending, abnormal, today added, completion rate.
- Trend chart: time-based change.
- Distribution chart: category, region, owner, status.
- Alert or todo list: high-priority items with direct action.
- Quick entry: common operations.
- Map view only when data has region or coordinates.

Every important number should support click-through with conditions preserved.

## List Page

Standard structure:

- Page header: title, short context, primary action.
- Query area: name/title fuzzy search, status, category, time range, owner, region.
- Toolbar: create, batch actions, import/export if needed.
- Table: stable columns, status emphasis, row actions.
- Pagination: total, page number, page size when useful.

Rules:

- Text search defaults to fuzzy and case-insensitive.
- IDs should not be the primary search field unless users actually use IDs.
- Category fields use select or multi-select; searchable when options are many.
- Long text must truncate with tooltip/drawer/detail access.
- Too many row actions should collapse secondary actions into "更多".
- Provide empty, loading, no-result, and permission-denied states.

## Detail Page

Use when a record has context that cannot fit in a table.

Recommended modules:

- Header: object name, status, primary actions.
- Basic information: key fields in compact description layout.
- Main content: full text, configuration, assets, or business data.
- Related records: child objects, linked tasks, associated users.
- Timeline: operation history, approval history, status changes.

Detail pages should provide return, edit, delete/high-risk action, and next-step actions when applicable.

## Batch / Subtask Workspace

Use when a task contains multiple batches, collection requirements, or file/input groups.

Recommended modules:

- Requirement breakdown: what this batch must collect and acceptance rules.
- Content type matrix: PDF, image, video, Excel, doc/docx, txt, manual input, QA pair, prompt/image pair.
- File/record list: item name, type, owner, version, parsing status, review status, next action.
- Version history: upload, revision, review, rejection, and pass records.
- Action rules: upload, revise, submit review, view diff, lock, reopen when allowed.

Do not hide batch lifecycle inside a single status column when users must revise or review content.

## Document Review Workspace

Use for PDF, image scan, OCR, Excel, and manually corrected content.

Recommended layout:

- Left panel: page thumbnails, sheet list, frame list, or row groups.
- Center panel: original source preview. Simulate the PDF page/image/table when real files are not available.
- Right panel: recognized content, corrected content, structured fields, or reviewer comments.
- Bottom or side panel: version timeline and review actions.

Required interaction details:

- Highlight uncertain OCR content.
- Highlight inserted, deleted, and modified text or cells.
- Show previous version vs current version when revisions exist.
- Bind review conclusion to page/row/file version, not only the whole task.
- Lock edit/upload actions when content is rejected.

## Create / Edit Form

Default goals:

- Fast input.
- Clear grouping.
- Immediate validation.
- Stable save actions.

Layout:

- Two columns by default for normal fields.
- Three columns only for many short fields.
- Single column for long text, rich text, uploads, complex rule builders, or large configuration blocks.
- Sticky footer actions for long forms: cancel, save, save and return, submit/publish.

Field grouping examples:

- Basic information
- Classification and ownership
- Rules and thresholds
- Display/content settings
- Advanced settings
- Publish or lifecycle settings

## Wizard / Multi-Step Flow

Use when:

- The task has clear stages.
- Later steps depend on earlier choices.
- There are too many fields for one page.
- The user needs preview, validation, or publish confirmation.

Recommended steps:

1. Basic information
2. Rule or object selection
3. Content/configuration
4. Preview and validation
5. Submit/publish confirmation

Show current step, completed steps, previous/next actions, validation blockers, and draft save when useful.

## Alerts, Logs, and Monitoring

Alert center:

- Filter by level, source, status, owner, and time.
- Show latest/highest priority first.
- Provide process, assign, ignore, close, and view detail actions.

Logs:

- Filter by operator, operation type, object, time, result.
- Keep table dense and searchable.
- Use detail drawer for request/response or long messages.

Monitoring:

- Separate overview from diagnosis.
- Use status cards, trends, current incidents, and drill-down paths.

## High-Risk Operations

High-risk actions include delete, batch delete, disable, clear, overwrite, publish rollback, permission changes, and irreversible approval.

Prototype must specify:

- Confirmation surface: modal, drawer, or full-screen confirmation for very high risk.
- Object affected.
- Consequence.
- Recoverability.
- Required confirmation method: click, checkbox, input object name, or secondary approval.

## Responsive Priority

For admin systems, default to desktop-first. If mobile is requested:

- Preserve task priority, not every table column.
- Replace wide tables with card rows or essential-column tables.
- Move filters into drawers.
- Keep high-risk confirmations explicit.
