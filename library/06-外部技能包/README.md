# 06 · 外部技能包

> 从 5 个开源学术技能仓库引入，共 **404 个 SKILL.md** / 3957 文件 / 44.6 MB。
> 原始体量 570 MB，剔除站点资源、测试集与示例成图后压到当前体积。

---

## 为什么单独一层，不并进 01-05

01-05 是**按主题**分的中文原创主线（科研入门 / 申报材料 / VibeCoding / 文献综述 / 学术绘图），每个技能都经过挑选和改写。

这 5 个包是**第三方完整技能集**，特点相反：数量大（单个包最多 197 个）、横跨多个主题、按上游目录组织。硬糅进 01-05 会打散原有分类逻辑，也切断了来源追溯。

所以单独成层，**按来源**组织，每个包完整保留上游结构 + LICENSE + 提交哈希。要用哪个技能，来这里查 `_INVENTORY.md`，或直接搜技能名。

---

## 五个来源

| # | 来源包 | 上游 | 技能 | 体积 | 许可 |
|---|---|---|---|---|---|
| 1 | **K-Dense 科学技能库**<br>`scientific-agent-skills/` | [K-Dense-AI/scientific-agent-skills](https://github.com/K-Dense-AI/scientific-agent-skills) | 177 | 20.94 MB | MIT |
| 2 | **Nature 风格学术技能**<br>`nature-skills/` | [Yuan1z0825/nature-skills](https://github.com/Yuan1z0825/nature-skills) | 24 | 5.26 MB | Apache-2.0 |
| 3 | **ARIS 自主科研循环**<br>`aris/` | [wanshuiyin/Auto-claude-code-research-in-sleep](https://github.com/wanshuiyin/Auto-claude-code-research-in-sleep) | 197 | 6.09 MB | MIT |
| 4 | **学术研究全流程技能**<br>`academic-research-skills/` | [Imbad0202/academic-research-skills](https://github.com/Imbad0202/academic-research-skills) | 5 | 11.2 MB | 见 LICENSE / NOTICE.md（上游标 NOASSERTION） |
| 5 | **学术文本去 AI 味**<br>`humanizer-academic/` | [matsuikentaro1/humanizer_academic](https://github.com/matsuikentaro1/humanizer_academic) | 1 | 1.12 MB | 见 LICENSE（上游标 NOASSERTION） |

---

## 各包速览

### K-Dense 科学技能库 · `scientific-agent-skills/`

科研全流程的即用型技能，覆盖面最广的一个包。文献检索、数据统计、科学可视化、临床报告、实验方案、基金申请、特定工具链（scanpy / matlab / simpy / pyopenms / neuropixels）都在里面。

**适合**：需要一个具体科研动作的现成 SOP 时先来这里翻。

- 技能数：**177**
- 上游提交：`c21d13b3cc28`（2026-11-26 抓取）
- 精简：已剔除 docs/（253 MB 截图与站点资源）、tests/、.github/；仅保留 skills/ 技能本体。
- 清单：[`scientific-agent-skills/_INVENTORY.md`](scientific-agent-skills/_INVENTORY.md)

### Nature 风格学术技能 · `nature-skills/`

中文技能包，对标 Nature 的写作与配图规范。含 `nature-figure` 画图、`nature-writing` 写作、`nature-polishing` 润色、`nature-reviewer` 审稿视角、`nature-response` 回复信、`nature-image2ppt` / `nature-paper2ppt` 做汇报。

**适合**：写完论文要按顶刊标准打磨，或者要把论文转成组会 PPT。

- 技能数：**24**
- 上游提交：`c300047218d1`（2026-11-26 抓取）
- 精简：已剔除 nature-figure/assets/（34 MB 示例成图，SKILL.md 零引用）、docs/、tests/、RDA-results/。
- 清单：[`nature-skills/_INVENTORY.md`](nature-skills/_INVENTORY.md)

### ARIS 自主科研循环 · `aris/`

为**自主科研循环**设计的一组技能（ARIS / Auto-Research-In-Sleep），纯 Markdown，没有重代码。核心是跨模型评审循环、Idea 发现流水线、实验队列与自动化编排。

**适合**：想让 Agent 在你睡觉时自己跑「提想法 → 做实验 → 写稿 → 自审」闭环。

注意：这套技能大量依赖 `mcp__codex__*` 等外部工具，单独加载会因为工具缺失而跑不动，用之前先看 SKILL.md 的 `allowed-tools`。

- 技能数：**197**
- 上游提交：`3fefd34146d3`（2026-11-26 抓取）
- 精简：已剔除 docs/（14.9 MB）、tests/、assets/（5.8 MB）、mcp-servers/、aris-monitor/、tools/。
- 清单：[`aris/_INVENTORY.md`](aris/_INVENTORY.md)

### 学术研究全流程技能 · `academic-research-skills/`

Claude Code 插件形态的学术流水线，5 个技能串成一条链：`deep-research` 检索 → `academic-paper` 写作 → `academic-paper-reviewer` 评审 → `academic-pipeline` 编排 → `sr-screener` 系统综述筛选。

**适合**：要一条完整的「研究 → 写作 → 评审 → 修订」链路，而不是单个动作。

这个包自带 `shared/`、`scripts/`、`hooks/` 和 `.claude-plugin/`，是**可直接作为 Claude Code 插件安装**的完整结构。

- 技能数：**5**
- 上游提交：`3eb9f07b8d0a`（2026-11-26 抓取）
- 精简：已剔除 evals/（1146 文件 / 12.9 MB）、tests/、docs/、examples/、audits/、plugin-evals*/；scripts/ 内全部 test_*.py 未复制。
- 清单：[`academic-research-skills/_INVENTORY.md`](academic-research-skills/_INVENTORY.md)

### 学术文本去 AI 味 · `humanizer-academic/`

单一技能，专治「AI 味」。针对学术医学论文，给出改写规则、禁用词表和示例对照，让文字读起来像人写的。

**适合**：论文初稿是 AI 生成或润色过头，想把它掰回自然语感。

- 技能数：**1**
- 上游提交：`96ad01a5d0cd`（2026-11-26 抓取）
- 精简：整包收录（11 文件 / 1.1 MB），仅剔除 .git。
- 清单：[`humanizer-academic/_INVENTORY.md`](humanizer-academic/_INVENTORY.md)

---

## 怎么用

**方式一 · 直接读**：技能就是 `SKILL.md` 一个文件，Markdown 打开就能看，按里面的步骤走。

**方式二 · 喂给 Agent**：把某个 `SKILL.md` 全文作为上下文，或按 Agent Skills 规范加载整个目录。

**方式三 · 装进 Claude Code**：`academic-research-skills` 和 `aris` 带 `.claude-plugin/` / `commands/` / `agents/`，是完整插件结构，可直接作为插件目录使用。

---

## 许可与合规（重要）

每个包目录下都保留了上游 `LICENSE`（部分含 `NOTICE.md`）和 `UPSTREAM-README.md`，`_SOURCE.json` 记录了上游地址、提交哈希、抓取日期与精简范围。

| 包 | 许可 | 能不能商用 |
|---|---|---|
| scientific-agent-skills | MIT | 可以，保留版权声明 |
| nature-skills | Apache-2.0 | 可以，保留声明与变更说明 |
| aris | MIT | 可以，保留版权声明 |
| academic-research-skills | 上游标 NOASSERTION，见 `LICENSE` / `NOTICE.md` | **未明确授权，别商用** |
| humanizer-academic | 上游标 NOASSERTION，见 `LICENSE` | **未明确授权，别商用** |

**注意**：`scientific-agent-skills` 里有部分技能自带独立许可（例如 `deepspot-m` 是 PolyForm-Noncommercial-1.0.0，禁止商用）。单个技能能不能用，以该技能 `SKILL.md` frontmatter 里的 `license` 字段为准，不要只看包级 LICENSE。

---

## 精简说明

原始 5 个仓库合计 **570 MB**。本层只收「技能本体」，剔除内容如下：

| 包 | 剔除 | 体积 |
|---|---|---|
| scientific-agent-skills | `docs/` 站点截图、`tests/`、`.github/` | 253 MB |
| nature-skills | `nature-figure/assets/` 示例成图、`docs/`、`tests/`、`RDA-results/` | 36 MB |
| aris | `docs/`、`tests/`、`assets/`、`mcp-servers/`、`aris-monitor/`、`tools/` | 31 MB |
| academic-research-skills | `evals/`、`tests/`、`docs/`、`examples/`、`audits/`、`scripts/test_*.py` | 28 MB |
| humanizer-academic | 仅 `.git` | — |

剔除原则：**不影响技能可执行性的才砍**。`nature-figure/assets/` 那 34 MB 成图在 `SKILL.md` 里零引用，纯展示；`scripts/test_*.py` 是测试集，不是运行依赖。需要完整原包请直接 clone 上游。
