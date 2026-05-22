# Output Templates

Use these templates when producing admin frontend prototype deliverables.

## Requirement Summary

```markdown
# 需求理解
- 系统类型：
- 目标用户：
- 核心目的：
- 核心对象：
- 对象层级：
- 核心动作：
- 完成步骤：
- 内容类型：
- 版本规则：
- 审核状态：
- 使用频率：
- 风险点：
- 输出形式：

# 关键假设
- ...

# 待确认项
- ...
```

## Page Plan

```markdown
# 页面规划
- 登录页：用于身份进入和错误反馈。
- 首页 / 工作台：展示总览、待处理、告警和快捷入口。
- [对象]列表页：查询、筛选、批量操作、分页。
- [对象]详情页：完整信息、状态、关联记录、操作历史。
- [批次/子任务]工作台：展示需求拆解、内容类型、上传/录入、版本和审核状态。
- [文件处理]工作台：展示原始页、识别页、修订页、版本差异和审核动作。
- 新增 / 编辑页：分组表单、校验、保存。
- 日志 / 告警页：按条件查询和处理异常。
- 设置页：低频配置项管理。
```

## Closed-Loop Flow

```markdown
# 闭环拆解
- 任务如何开始：
- 一个任务包含哪些需求：
- 每个需求包含哪些步骤：
- 每个步骤有哪些内容类型：
- 哪些操作生成新版本：
- 审核结论如何改变下一步：
- 终态是什么：
```

## PageSpec

```markdown
## 页面：[页面名称]
- 页面目的：
- 目标用户：
- 入口来源：
- 布局结构：
- 核心模块：
- 主要字段 / 数据：
- 主要操作：
- 次要操作：
- 状态设计：加载 / 空数据 / 无结果 / 错误 / 无权限
- 跳转逻辑：
- 设计理由：
```

## Interaction Flow

```markdown
# 关键流程：[流程名称]
1. 用户从 [入口] 进入 [页面]。
2. 用户通过 [筛选/搜索/点击] 定位目标对象。
3. 用户执行 [动作]。
4. 系统展示 [反馈/校验/确认]。
5. 成功后跳转或停留在 [目标状态]。

# 异常与边界
- 无数据：
- 校验失败：
- 权限不足：
- 高风险确认：
```

## Prototype Response

```markdown
# 需求理解
[用 3-6 条说明对用户目标的理解。]

# 关键假设
[列出会影响设计的假设。]

# 页面规划
[列出导航和页面树。]

# 核心页面原型
## 首页 / 工作台
- ...

## 列表页
- ...

## 详情页
- ...

## 新增 / 编辑页
- ...

# 关键交互
- ...

# 待确认项
- ...
```

## Review Checklist

Before finalizing, check:

- Did the prototype solve the user's stated purpose?
- Is the target user clear?
- Does every core object have a list/detail/create/edit path when needed?
- Does the dashboard expose state, alerts, and useful jump paths?
- Do list pages include filters, table, actions, pagination, and long-text handling?
- Are forms grouped and efficient?
- Are high-risk operations confirmed with consequences?
- Are empty/loading/error/permission states mentioned?
- Are assumptions explicit?
