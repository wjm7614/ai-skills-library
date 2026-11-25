# AI Skills Library · 个人技能库

> 面向 **大二 · 人工智能专业** 在校生的可执行技能集合。
> 每个技能都是可被 AI Agent 直接加载的独立单元（Agent Skills 标准）。

---

## 仓库结构

```
ai-skills-library/
├── library/          ← 主库：给人看的中文分类库（4168 文件 / 452 个技能）
│   ├── 01-科研入门/            19 个 · 从选题到投稿全流程
│   ├── 02-申报材料/            17 个 · 奖学金/项目申报文书 + Word 渲染
│   ├── 03-VibeCoding实战/       5 个 · AI 编码实战与安全自检
│   ├── 04-文献综述工作流/       6 个 · 检索→筛选→精读→综合
│   ├── 05-学术绘图/             1 个 · R + plotthis 出科研/生信图
│   ├── 06-外部技能包/         404 个 · 5 个开源学术技能集（原样收录）
│   │   ├── scientific-agent-skills/   177 · K-Dense 科学技能库 · MIT
│   │   ├── nature-skills/              24 · Nature 写作与配图 · Apache-2.0
│   │   ├── aris/                      197 · ARIS 自主科研循环 · MIT
│   │   ├── academic-research-skills/    5 · 研究→写作→评审流水线
│   │   └── humanizer-academic/          1 · 学术文本去 AI 味
│   └── _meta/                 来源、审计、验证记录
│
├── dsh-skills/       ← 扁平技能层：给 DeepSeek Harness 扫描用（259 个精选技能）
└── DSH-USAGE.md      ← DSH 接入方式、扫描规则、frontmatter 规范
```

---

## 三个入口

| 想看什么 | 去哪 |
|---|---|
| **全部技能索引**（452 个技能的状态、来源、许可） | [`library/CATALOG.md`](library/CATALOG.md) |
| **主库说明书**（用法、目录详解、三条线的边界） | [`library/README.md`](library/README.md) |
| **外部技能包**（404 个第三方技能怎么找、许可限制、精简了什么） | [`library/06-外部技能包/README.md`](library/06-外部技能包/README.md) |

**查某个具体技能**：直接在仓库里搜技能名，或看对应包的 `_INVENTORY.md`（例如 [`nature-skills/_INVENTORY.md`](library/06-外部技能包/nature-skills/_INVENTORY.md)）。

---

## 三种组织方式，别搞混

| 层 | 逻辑 | 数量 | 说明 |
|---|---|---|---|
| `library/01-05` | **按主题** | 48 | 逐个挑选、改写的中文原创技能，带完整方法论 |
| `library/06` | **按来源** | 404 | 第三方完整技能集，原样收录，只剔除站点资源与测试集 |
| `dsh-skills/` | **扁平** | 259 | 从上面两层精选出来的，摊平成 `<kebab-name>/SKILL.md` 供 DSH 扫 |

---

## 怎么用

**直接对话**：把某个 `SKILL.md` 全文作为上下文喂给 AI，或直接说里面的触发词。

**加载为 Skill**：按 Agent Skills 规范加载整个技能目录（`SKILL.md` + `references/` + `scripts/`）。

**跑脚本**：申报材料类技能附带 `build.py`，能把结构化数据渲染成排版好的 Word。

---

## 许可

| 层 | 许可 |
|---|---|
| 01 科研入门 | 上游未声明，个人学习用途，保留署名 |
| 02 申报材料 | MIT |
| 03 VibeCoding 实战 | 用户提供 |
| 04 文献综述工作流 | 上游未声明，不建议商业分发 |
| 05 学术绘图 | **GPL-3.0-or-later**（传染性） |
| 06 外部技能包 | 混合：MIT ×2 / Apache-2.0 ×1 / NOASSERTION ×2，逐包保留 LICENSE |

> 06 里有部分技能自带独立许可（如 `deepspot-m` 是 PolyForm-Noncommercial-1.0.0，禁止商用）。**单个技能能不能用，以该技能 `SKILL.md` 的 `license` 字段为准**，不要只看包级 LICENSE。

来源、许可证、抓取时间见 [`library/_meta/SOURCES.md`](library/_meta/SOURCES.md)。
第三方代码审计结论见 [`library/_meta/SECURITY-AUDIT.md`](library/_meta/SECURITY-AUDIT.md)。

本库为个人整理版，保留所有原作者署名与免责声明。
