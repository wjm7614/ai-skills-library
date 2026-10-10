# 04 · 文献综述工作流（NLR）

> **Narrative Literature Review workflow** —— 用 AI 辅助写**叙述性文献综述**的完整工作流。
> **来源**：<https://github.com/bionoob7/nlr-workflow>（⭐ 39）

---

## ⚠️ 先看许可

| 项 | 说明 |
|---|---|
| 上游许可证 | **未声明**（仓库内没有 LICENSE 文件） |
| 本目录处理 | 原样保留上游全部内容，**保留原作者署名**，仅作个人学习用途 |
| 建议 | **不要用于商业分发**；如需正式使用，先去上游仓库确认授权 |

---

## 这个工作流解决什么问题

作者的设计思路（引自上游 README）：

> 很多 AI 科研项目趋向于去做一个"全能战士"，但实际上，我们在科研过程中需要解决的是**十分具体的问题**。据此，我产生了一个想法，**每次只用 AI 做好一件具体的事**。

它**专为叙述性综述设计**，不是系统性综述：

| | 叙述性综述（本工作流） | 系统性综述 |
|---|---|---|
| 驱动方式 | **论点驱动**文献 | 枚举文献 |
| 禁止写法 | 「本综述收录了 89 篇研究」这类精确计数 | 需要这类计数 |

> 上游用「癌症多模态 AI 综述」当模板项目，**内容可整套替换为任意生物医学选题**。

---

## 七阶段流程

```
Phase 1  文献检索    PubMed API              → pubmed_results.csv
Phase 2  文献筛选    AI 批量打分 → 人工复查   → final_screened.csv
Phase 3  资料提取    PDF/摘要 → AI 结构化提取 → extractions/*.md
Phase 4  综合分析    聚类 → 差距分析 → 大纲草稿
Phase 5  写作        /lit-draft 逐节起草      → manuscript_v1.md
Phase 6  润色        6a 事实审查 → 6b 去AI痕迹 → 6c 句式多样
                     → 6d 框架密度 → 6e 连贯性 → 6e-gate 投稿门控
Phase 7  参考文献    /lit-cite → pandoc + zotero.lua → manuscript.docx
```

> **Phase 6 的五轮串行润色是这套工作流的核心价值** —— 尤其 `6b 去 AI 痕迹`，对应 `lit-deregister` 技能里那份 16KB 的 AI 写作特征库。

---

## 六个技能

技能定义在 `.claude/skills/`，保持上游原样（这是 Claude Code 的自动发现路径，**不要移动**）：

| 技能 | 作用 | 附带参考 |
|---|---|---|
| `lit-status` | 查看/记录当前进度（配合 `LOG.md`） | — |
| `lit-audit` | 审查论证与事实一致性 | `references/claim-patterns.md`（9KB） |
| `lit-cite` | 生成与管理参考文献 | `references/bib-formats.md`（5KB） |
| `lit-deregister` | **去除 AI 写作痕迹** | `references/ai-patterns.md`（16KB） |
| `lit-draft` | 逐节起草正文 | `references/quality-constraints.md`（17KB） |
| `lit-gate` | 投稿前门控检查 | `references/gate-thresholds.md`（8KB） |

---

## 目录结构

```
04-文献综述工作流/
├── README.md                ← 本文件（导航）
├── NLR-完整手册.md           ← 上游 README 原文，790 行 / 34KB，细节都在这
├── CLAUDE.md                ← Claude Code 项目配置（每次会话自动读取）
├── LOG.md                   ← 会话日志模板
├── .env.example             ← 环境变量模板（含占位 key）
├── .gitignore               ← 已忽略 .env，不会误提交密钥
├── pyproject.toml           ← uv 依赖清单
├── uv.lock                  ← 锁定版本（上游要求提交）
│
├── .claude/skills/          ← 六个技能（保持原位）
│   ├── lit-audit/  lit-cite/  lit-deregister/
│   ├── lit-draft/  lit-gate/  lit-status/
│
├── manuscript/
│   └── zotero.lua           ← Pandoc 的 Zotero 引用过滤器（53KB）
│
└── 工作目录（空脚手架，等待你的内容）
    ├── search/              ← PubMed 原始结果 CSV
    ├── screening/           ← 筛选表格
    ├── extractions/         ← 每篇文献一个 .md 提取笔记
    ├── synthesis/           ← 聚类、差距分析
    ├── outline/             ← 大纲草稿
    ├── draft/               ← 各节草稿
    ├── references/          ← .bib 文件（Zotero Better BibTeX 导出）
    └── scripts/             ← Python 自动化脚本
```

> 上游规则：**所有文件必须写在上述结构内，不得在结构外新建文件**（除非与用户确认）。
> 空目录靠 `.gitkeep` 保留，所以 clone 下来就是可用的项目骨架。

---

## 怎么用

### 1. 装 uv（Python 包管理器，上游强制要求）

```bash
# Windows PowerShell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

> 上游明确要求：用 `uv run python scripts/xxx.py` 跑脚本、`uv add <包名>` 加依赖，**不要用 pip**。

### 2. 同步依赖

```bash
cd 04-文献综述工作流
uv sync
```

### 3. 配 API key

复制 `.env.example` 为 `.env`（已被 `.gitignore` 忽略），填入：

```dotenv
DEEPSEEK_API_KEY=你的key      # 需自行到 DeepSeek 官网申请
SCREEN_MODEL=deepseek-v4-flash
```

### 4. 用 Claude Code 打开这个目录

`CLAUDE.md` 会被自动读取，然后可以直接说：

```
/lit-status          查看进度
/lit-draft           起草某一节
/lit-deregister      去掉 AI 痕迹
/lit-gate            投稿前门控检查
```

### 5. 还需要装的外部工具

| 工具 | 用途 |
|---|---|
| **Zotero** + **Better BibTeX** 插件 | 文献管理 + 生成稳定 citekey、导出 `.bib` |
| **Pandoc** | 把 `.md` 转 `.docx` |
| **DeepSeek API key** | Phase 2 批量筛选、Phase 3 结构化提取 |

---

## 与本库其他部分的关联

| 关联 | 位置 |
|---|---|
| 找论文 / 读论文 / 想 Idea 的方法论 | `../01-科研入门/02-如何找论文.md`、`03-如何读论文.md`、`04-如何想Idea.md` |
| 正式论文各章节怎么写 | `../01-科研入门/06-摘要Abstract.md` ~ `11-参考文献Reference.md` |
| 投稿被质疑怎么回应 | `../01-科研入门/13-如何Rebuttal.md` |
| 图表怎么画 | `../01-科研入门/12-论文画图指南.md`；**R 绘图见 `../05-学术绘图/`** |
| AI 会编造事实这件事 | `../01-科研入门/18-AI辅助科研技巧.md` |

> 简言之：`01-科研入门` 是**方法论**，`04` 是**可执行的流水线**，`05` 是**出图工具**。
