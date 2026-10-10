# 05 · 学术绘图

> 用 R 画科研/生信图形。目前收录 **1 个技能**。
> **来源**：<https://github.com/bionoob7/ben-academic-skill>

---

## 许可（分技能声明，务必看清）

| 范围 | 许可 | 依据 |
|---|---|---|
| `plotthis-r-plotting/` | **GPL-3.0-or-later** | 上游 `LICENSE.md`（34KB 全文随技能一起保留） |
| 上游仓库根目录的原创说明与配置 | **未指定许可证** | 上游明确声明「不为这些文件额外授予使用、修改或分发许可」 |

> ⚠️ **GPL-3.0 是传染性许可**：如果你要分发基于它修改的作品，需要同样以 GPL-3.0 开放。
> 个人自用不受影响。第三方资料（plotthis 的 API 文档快照）保留其原有许可与署名。

---

## 目录结构

```
05-学术绘图/
├── README.md                    ← 本文件（导航）
├── plotthis-r-plotting/         ← 技能本体（原样保留）
│   ├── SKILL.md                 ← 面向 Agent 的执行指令
│   ├── README.md                ← 面向使用者的说明
│   ├── LICENSE.md               ← GPL-3.0 全文
│   ├── agents/openai.yaml       ← 工具适配配置
│   ├── references/              ← 按需读取的参考资料
│   │   ├── plot-catalog.md      ← 图型索引（第一步就读这个）
│   │   ├── common-arguments.md  ← 共同参数与返回对象
│   │   ├── bioinformatics-plots.md
│   │   ├── specialized-plots.md
│   │   ├── examples.md
│   │   ├── provenance.md        ← 来源、版本、更新约束
│   │   ├── snapshot-md5.txt     ← 上游文档快照校验值
│   │   └── api/*.Rd             ← 40+ 个 plotthis 函数 API 快照
│   └── scripts/
│       ├── check_plotthis.R     ← 只读检查版本与函数参数（不装包）
│       ├── smoke_test.R         ← 合成数据冒烟测试
│       └── build_catalog.R      ← 维护者重建索引用（日常不需要）
└── _上游文档-AGENTS.md          ← 上游维护约定（原文保留）
└── _上游文档-LICENSE.md         ← 上游分技能许可说明（原文保留）
```

---

## 技能能力

`plotthis-r-plotting` 用 **R + plotthis** 画统计、科研与生信图形，支持用 **ggplot2 精修**。

覆盖的图型（`references/api/` 下有完整 API 快照）：

| 分类 | 图型 |
|---|---|
| 基础统计 | `barplot`、`boxviolinplot`、`densityhistoplot`、`jitterplot`、`LinePlot`、`AreaPlot`、`ScatterPlot`、`RidgePlot`、`TrendPlot` |
| 生信专用 | `VolcanoPlot`、`ManhattanPlot`、`Heatmap`、`LinkedHeatmap`、`UpsetPlot`、`ROCCurve`、`RarefactionPlot`、`enrichmap1`、`gsea`、`VelocityPlot` |
| 相关/网络 | `CorPlot`、`CorPairsPlot`、`Network`、`chordplot`、`dimplot`、`ClustreePlot` |
| 组成/比例 | `PieChart`、`RingPlot`、`VennDiagram`、`sankeyplot`、`WordCloudPlot`、`radarplot` |
| 空间/其他 | `spatialplots`、`QQPlot`、`dotplot`、`palette_this`、`theme_this` 等 |

> 这是**上游参考资料里的函数清单**，不代表本机已安装 plotthis。实际可用函数以本机安装版本为准（见下方"先跑检查脚本"）。

---

## 怎么用

### 1. 装依赖

需要 **R** 和 **plotthis**（按图型还需其他 R 包）。上游**不自动安装**任何依赖。

```r
install.packages("plotthis")
```

### 2. 先跑只读检查脚本

```bash
Rscript --vanilla plotthis-r-plotting/scripts/check_plotthis.R
# 检查指定函数：
Rscript --vanilla plotthis-r-plotting/scripts/check_plotthis.R VolcanoPlot Heatmap
```

> 脚本**只读**：查版本、导出函数、指定函数参数，**不会安装或升级任何包**。

### 3. 在支持 Skill 的工具里调用

把 `plotthis-r-plotting/` **整个文件夹**复制到 Agent 工具的 Skill 目录（保留内部结构），然后直接提需求：

> 使用 plotthis-r-plotting，为我的数据绘制分组散点图，交付 PNG、PDF 和可复现的 R 脚本。先核对数据列及本地绘图库版本。

---

## 这个技能的几个硬规矩（值得学）

上游 `SKILL.md` 和 `AGENTS.md` 里定的规矩，比一般 skill 严格得多：

| 规矩 | 说明 |
|---|---|
| **图形语义决定实现** | plotthis 原生能满足就优先用；能精修时才叠 ggplot2；明显更复杂就回退到 ggplot2/base R |
| **尊重用户指定的库** | 用户点名用别的包就照做，不硬推 plotthis |
| **不许编造** | 不编造数据、统计结果、验证结论 |
| **区分三个版本** | 「参考版本」「实际运行版本」「在线最新版本」必须分清，不能把本地快照说成最新版 |
| **失败要如实说** | 跑不了就交付代码并明说"未执行"，**不能声称图已验证** |
| **查 index 再开文件** | 先读 `plot-catalog.md` 定位候选函数，再只打开对应的 API 文件（省上下文） |

> 最后一条是**渐进式加载**的好示范 —— 和本库 `01-科研入门` 的设计思路一致。

---

## 与本库其他部分的关联

| 关联 | 位置 |
|---|---|
| 论文配图的原则（画什么、怎么组织） | `../01-科研入门/12-论文画图指南.md` |
| 文献综述里要出的图 | `../04-文献综述工作流/`（Phase 4 综合阶段的聚类/差距图） |
| 实验章节怎么呈现结果 | `../01-科研入门/10-实验Experiments.md` |

> 分工：`01-科研入门/12` 讲**该画什么、为什么**，`05` 讲**用什么工具真的画出来**。
