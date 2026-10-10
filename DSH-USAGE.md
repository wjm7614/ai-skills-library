# 如何在 DeepSeek Harness 里调用这个技能库

这份文档解决一个问题：**把 GitHub 上的技能库，变成 DSH 能直接调用的本地 skill。**

---

## 一、你现在的库为什么不兼容 DSH

你的 `ai-skills-library` 是这样组织的：

```
01-科研入门/
02-申报材料/
03-VibeCoding实战/
04-文献综述工作流/
05-学术绘图/
```

这是**给人看的分类库**，结构清晰、适合浏览。但 DSH 不认：

| DSH 的规则 | 你的库现状 | 结果 |
|---|---|---|
| 扫 `.dsh/skills/` 等固定根目录 | 放在 `01-科研入门/` 这种中文编号目录 | 扫不到 |
| 要求 `<name>/SKILL.md` | 中文目录名 + 目录层级不匹配 | 扫不到 |
| 名称必须 kebab-case | `01-科研入门` 不是 kebab-case | 名称非法 |
| frontmatter 必须有 `name`/`description` | 部分文件有，部分没有 | 加载失败 |

**所以答案不是二选一，而是两层都要：**

- **给人看的**：`01-` 到 `05-` 的中文主线不动，你在网页上翻阅用
- **给 DSH 用的**：新增 `dsh-skills/`，全部扁平成 kebab-case

---

## 二、DSH 的扫描目录（按优先级）

DSH 启动时按这个顺序找 skill，**序号小的优先**，同名时高位覆盖低位：

| 优先级 | 目录 | 说明 |
|---|---|---|
| 100 | `<项目>/.dsh/skills` | 项目专用，最高优先级 |
| 200 | `<项目>/.agents/skills` | Agent 约定目录，项目级 |
| 300 | `customSkillDirs` 配置项 | 自定义路径，适合团队共享 |
| 400 | `$DSH_HOME/skills` | 用户级，全机所有项目可用 |
| 500 | `~/.agents/skills` | 共享 Agent home |
| 600 | 内置 bundled | 随发行版，兜底 |

### 推荐用法

**全机通用**（推荐）——把整包放到用户级目录：

```bash
git clone https://github.com/wjm7614/ai-skills-library.git ~/dsh-library
```

然后让 DSH 指向它。两种方式：

**方式 1：软链接到 `$DSH_HOME/skills`**

```bash
# Windows（管理员 PowerShell）
New-Item -ItemType Junction -Path "$env:DSH_HOME\skills\ai-skills" -Target "$HOME\dsh-library\dsh-skills"

# macOS / Linux
ln -s ~/dsh-library/dsh-skills/* "$DSH_HOME/skills/"
```

**方式 2：写进 `customSkillDirs` 配置**（优先级 300，比用户级还高）

```json
{
  "customSkillDirs": [
    "C:/Users/Lenovo/dsh-library/dsh-skills"
  ]
}
```

这样不用复制文件，`git pull` 更新后 DSH 重新加载即可生效。

---

## 三、两种 skill 布局

DSH 支持两种，你库里两种都有：

**目录式** —— 目录名就是 skill 名，说明在 `SKILL.md` 里。适合带脚本/模板的：

```
dsh-skills/
└── literature-review/
    ├── SKILL.md          ← 必须叫这个名
    ├── references/       ← 按需加载，不占上下文
    └── scripts/
```

**单文件式** —— 文件名就是 skill 名。适合纯文字的：

```
dsh-skills/
└── research-paper-writing.md
```

---

## 四、SKILL.md 的最小格式

```markdown
---
name: literature-review
description: 系统性文献综述工作流。当用户需要检索、筛选、综述学术文献时使用。
---

# 文献综述

1. 明确研究问题与检索范围
2. 多库并行检索（PubMed / arXiv / Semantic Scholar）
3. 去重、标题摘要筛选
4. 全文提取与质量评估
5. 主题归类与证据综合
6. 按目标期刊格式成稿
```

**三条硬规矩：**

1. `name` 必须 kebab-case（小写字母 + 数字 + 连字符），且与目录名一致
2. frontmatter 的 `---` 必须成对，`name` 和 `description` 缺一不可
3. `description` 控制在 **500 字符**内 —— 超出会被 DSH 截断（`catalogDescriptionMaxLength` 默认 500）

### frontmatter 里的调用控制开关

| 开关 | 作用 |
|---|---|
| 不写任何开关 | 模型可自动调用，用户也可手动调用（最开放） |
| `disable-model-invocation: true` | 只有用户显式调用才生效，适合有副作用的操作 |
| `user-invocable: false` | 不暴露给用户，只由模型按上下文决定 |

---

## 五、加载机制：为什么 skill 多也不怕

DSH **不会**把所有 skill 正文永久塞进系统提示词。它的流程是：

```
会话启动 → 只读所有 SKILL.md 的 frontmatter → 得到「目录摘要」
         ↓
用户提问 → 模型发现匹配的 skill → 通过内置 skill 工具按需加载正文
         ↓
执行时 → references/scripts/assets 也只在指令明确要求时才读
```

这意味着：**你放 200 个 skill 进去，日常消耗的上下文仍然只跟当次任务相关。**

---

## 六、验证清单

装完后按这个顺序确认：

1. **目录存在**：`ls $DSH_HOME/skills/` 能看到你的 skill 目录
2. **文件名对**：每个目录下有 `SKILL.md`（大小写敏感，不能是 `skill.md`）
3. **frontmatter 合法**：`name` 是 kebab-case，`description` 非空
4. **重启 / 刷新**：DSH 监视 skill 目录，改 frontmatter 后刷新即可；正文每次加载都重读
5. **看目录摘要**：新会话里应该能看到你的 skill 名字和简短说明
6. **实际调用**：让 DSH 做一件明显匹配某个 skill 的事，看它是否自动加载

---

## 七、更新流程

库是从 GitHub 来的，更新很简单：

```bash
cd ~/dsh-library
git pull
```

用软链接或 `customSkillDirs` 的话，DSH 下次刷新就吃到新内容。

---

## 八、常见坑

| 现象 | 原因 | 处理 |
|---|---|---|
| skill 不出现 | 目录名不是 kebab-case | 重命名为小写连字符 |
| skill 不出现 | 文件名是 `skill.md` 不是 `SKILL.md` | 改大小写 |
| skill 不出现 | 放进了中文编号目录 | 移到 `dsh-skills/` 扁平层 |
| 描述被截断 | `description` 超 500 字符 | 精简到 500 内 |
| 模型调不到 | `name` 与目录名不一致 | 改成一致 |
| 自动触发了不该触发的 | 有副作用却允许自动调用 | 加 `disable-model-invocation: true` |
