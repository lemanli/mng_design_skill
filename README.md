# MNG Design Skill

后台管理系统前台原型设计技能。

这个仓库用于让 Codex / Agent 根据用户的自然语言需求，先以产品经理视角理解目标、角色和业务流程，再输出后台管理系统的前台页面规划、原型说明和交互设计。

## 适用场景

- 后台管理系统原型设计
- 运营后台、配置后台、数据看板、工作台设计
- CRUD 页面、列表页、详情页、表单页、向导页设计
- 权限管理、日志中心、告警中心、监控页面设计
- 将模糊需求整理成可落地的前台页面规格

## 不做什么

- 不设计后端架构
- 不输出数据库模型
- 不生成后端接口代码
- 不做官网、营销页、强品牌创意页

## 仓库结构

```text
.
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    ├── admin-ui-patterns.md
    ├── output-templates.md
    └── product-analysis.md
```

## 文件说明

- `SKILL.md`：技能入口，定义触发条件、核心工作流和协作规则。
- `agents/openai.yaml`：技能展示和默认调用元数据。
- `references/product-analysis.md`：产品经理式需求分析方法。
- `references/admin-ui-patterns.md`：后台管理系统常见页面与交互模式。
- `references/output-templates.md`：需求理解、页面规划、PageSpec 和交互流程模板。

## 使用方式

在支持 Skill 的 Agent 环境中引用：

```text
Use $mng-design-skill to design a frontend prototype for an admin management system from my requirements.
```

用户也可以直接描述需求，例如：

```text
设计一个设备管理后台，首页要有设备总览、异常告警、区域分布，列表页支持状态筛选和批量处理。
```

技能会优先输出：

- 需求理解
- 关键假设
- 页面规划
- 核心页面原型
- 关键交互
- 待确认项

## 设计原则

- 先理解用户目的，再设计页面。
- 先结构化业务对象、角色和动作，再画页面。
- 后台系统优先考虑效率、密度、可扫描性和操作闭环。
- 重要数据必须能跳转到明细处理路径。
- 高风险操作必须说明确认方式和影响。
