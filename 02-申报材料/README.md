# 02 · 申报材料

大学生申报文书生成。**17 个精选赛道**，来自上游 35 个赛道中的校内高频部分。

## 结构与用法

```
02-申报材料/
├── 科研立项/    innovation-research · entrepreneurship-training · entrepreneurship-practice · university-research · college-research
├── 学科竞赛/    challenge-cup · internet-plus · internet-plus-red-tour
├── 奖学金/      national-scholarship · motivation-scholarship
├── 评优评先/    outstanding-student · outstanding-thesis
├── 升学保研/    graduate-recommendation
└── 社会实践/    social-survey · volunteer-teaching · tech-service · policy-lecture
```

每个赛道目录里有两个文件：

| 文件 | 作用 |
|---|---|
| `SKILL.md` | 技能定义：触发条件、写作规范、评审标准、追问话术、结构模板 |
| `build.py` | 生成器：把 JSON 数据渲染成排版好的 `.docx` |

## 环境准备

```bash
pip install -r utils/requirements.txt
```

依赖：`python-docx>=1.1.0`、`matplotlib>=3.7`、`pyyaml>=6.0`（Python ≥ 3.11 还会装 `skills-ref`）。

> ⚠️ **`utils/` 的位置不可移动。**
> 所有 17 个 `build.py` 都用 `路径(dirname(__file__))/../../utils` 定位共享模块。也就是说 `utils/` 必须在**赛道目录往上两级**处。
> 当前布局 `02-申报材料/<类别>/<赛道>/` 正好满足：往上两级 = `02-申报材料/`。
> 如果你要把赛道挪到别处（比如单独的 `科研立项/` 仓库），**必须同时把 `utils/` 和 `references/` 放到新位置的同一层级**，否则 `--school` 会静默失效。
> 这一条是实测踩出来的（见 `../_meta/VERIFICATION.md`）。

## 用法一：对话式（推荐）

把对应赛道的 `SKILL.md` 作为系统提示词加载给 AI，然后直接说需求：

> 「帮我写一份大创创新训练申报书，课题是无人机路径规划」

AI 会：
1. **追问**你缺的信息（专业排名？指导老师？预算？）
2. 生成**正文**
3. 生成 Mermaid 图表（技术路线图 + 甘特图 + 流程图）
4. 输出图文并茂的 Word

## 用法二：脚本直出

```bash
python 奖学金/national-scholarship/build.py \
  --data my_info.json \
  --school 南京工业大学 \
  --out 国家奖学金申请书.docx
```

### 参数说明

| 参数 | 说明 |
|---|---|
| `--data` | 你的信息 JSON（字段见对应 `SKILL.md` 的信息采集清单） |
| `--school` | 套用学校版式。支持英文缩写 / 中文全称 / 简称 |
| `--out` | 输出文件名 |
| `--demo` | 用示例数据生成一份，用来预览排版 |

### 关于 `--school`

项目内置**学校版式模板引擎**，按"先出内容、再套版式"两层工作：

- **内容层**：Skill 专注内容质量，生成申报书正文
- **版式层**：`_shared/utils/schools/` 下按学校存放版式配置（页边距 / 页眉 / 页脚 / 印章位置）
- **套用**：正文生成完后用 `--school` 一步套用

上游已收录：`pku`（北京大学）、`tsinghua`（清华大学）、`whu`（武汉大学）、`zju`（浙江大学），其余走默认版式。

> 传入未收录的学校时会**提示已收录清单，并按默认版式输出**——不会静默降级。

**加自己学校的版式**：复制 `utils/schools/template_default.json` 为 `template_<学校id>.json`，改好后即可被 `--school` 识别。

## ⚠️ 诚实底线（必读）

这套技能内置了诚实约束，请务必遵守：

- **只写你能提供证据的事实** —— 它问"你拿过什么奖"，不替你列奖项
- **不放大、不润色** —— "班级第二"就是"班级第二"，不会写成"成绩优异名列前茅"
- **不留模糊占位** —— 拿不准的信息追问，不写"获得多项荣誉"这种空话
- **生成后必须逐项核对真实性**

> 大学生申报书是面向学校 / 教育主管部门的正式材料。
> **造假会被记入档案甚至触发学籍处分——这是红线。**

## 排版输出说明

生成的 `.docx` 含标准字号、表格、签字栏，部分赛道还含：

- 技术路线图
- 甘特图
- 经费饼图

> 需要 PDF 时，`_shared/utils/pdf_export.py` 会调用 **LibreOffice** 做 docx→pdf 转换。**前提是本机装了 LibreOffice**；没装则跳过 PDF，只出 docx（不会报错中断）。

## 自检

交材料前逐项过：

- [ ] 所有数字（排名、金额、人数、时间）是否与事实一致
- [ ] 有没有被 AI 补出来的、你其实没有的经历或奖项？
- [ ] 格式是否对照了本校下发的模板（栏目顺序 / 字号 / 页边距可能有差异）
- [ ] 政治类文书（如入团申请书）的政治表述是否准确
- [ ] 是否需要签字栏、盖章位

## 来源

上游：[cuic19053-hue/awesome-student-ai-skills](https://github.com/cuic19053-hue/awesome-student-ai-skills)（MIT License）

本目录为精选子集，完整 35 个赛道见 [`../CATALOG.md`](../CATALOG.md)。
