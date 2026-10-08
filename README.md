# AI Skills Library · 个人技能库

> 面向 **大二 · 人工智能专业** 在校生的可执行技能集合。
> 五条主线：**做科研 / 写论文** + **大学生申报材料** + **VibeCoding 实战与安全自检** + **文献综述工作流** + **学术绘图**。
> 每个技能都是可被 AI Agent 直接加载的独立单元（Agent Skills 标准）。

---

## 这个库是什么

不是"收藏夹"，是**能跑的东西**。每个技能目录里有：

- `SKILL.md` —— 带 YAML frontmatter 的 skill 定义（name / description / 触发条件 / 执行步骤）
- `build.py` —— 申报材料类附带，把结构化数据渲染成排版好的 Word 文件
- 参考资料 —— 评审标准、写作规范、避坑指南

你把某个 `SKILL.md` 作为系统提示词喂给 AI，或者直接说触发词，就能用。

---

## 目录结构

```
ai-skills-library/
├── 01-科研入门/            # 从选题到投稿的全流程（19 篇）
│   ├── SKILL.md           # 总入口：按阶段路由
│   ├── 01-如何做科研.md
│   ├── 02-如何找论文.md
│   ├── 03-如何读论文.md
│   ├── 04-如何想Idea.md
│   ├── 05-如何写论文.md
│   ├── 06-摘要Abstract.md
│   ├── 07-引言Introduction.md
│   ├── 08-相关工作RelatedWorks.md
│   ├── 09-方法Methods.md
│   ├── 10-实验Experiments.md
│   ├── 11-参考文献Reference.md
│   ├── 12-论文画图指南.md
│   ├── 13-如何Rebuttal.md
│   ├── 14-学术汇报.md
│   ├── 15-高效组会Meeting.md
│   ├── 16-学术会议参会指南.md
│   ├── 17-好的科研习惯.md
│   └── 18-AI辅助科研技巧.md
│
├── 02-申报材料/            # 精选 17 个赛道
│   ├── 科研立项/          # 大创创新/创业训练/创业实践、校级、院级
│   ├── 学科竞赛/          # 挑战杯、互联网+、互联网+红旅
│   ├── 奖学金/            # 国家奖学金、国家励志奖学金
│   ├── 评优评先/          # 优秀学生、优秀毕业设计
│   ├── 升学保研/          # 保研推免
│   ├── 社会实践/          # 社会调查、支教、科技服务、政策宣讲
│   ├── utils/             # 共享依赖（⚠️ 位置不可移动，见下方说明）
│   ├── references/        # 撰写规范、评审维度、避坑指南
│   ├── index.json         # 上游 35 赛道完整元数据（触发词表）
│   └── version.json       # 上游版本信息
│
├── 03-VibeCoding实战/      # 用 AI 写项目：怎么搭、怎么验收、怎么不出大事（5 篇）
│   ├── 01-架构搭建四步法.md        # 拆模块/分三层/先画蓝图/定规范 + 报错排查三步法
│   ├── 02-后端架构验收8步法.md      # 不懂代码怎么验收 AI 搭的后端
│   ├── 03-上线前安全审计流程.md     # 审计流程总览（7 步）
│   ├── 04-代码安全自检清单21项.md   # 21 项完整精讲（含"你看什么"）
│   ├── 05-安全自检提示词汇总.md     # 20 条可复制提示词
│   └── assets/                    # 21 张原始卡片图（13.14 MB）
│
├── 04-文献综述工作流/       # 叙述性文献综述（NLR）AI 流水线（6 个技能）
│   ├── NLR-完整手册.md             # 上游 790 行完整手册
│   ├── CLAUDE.md                  # Claude Code 项目配置
│   ├── .claude/skills/            # lit-status / lit-audit / lit-cite
│   │                              # lit-deregister / lit-draft / lit-gate
│   ├── manuscript/zotero.lua      # Pandoc 的 Zotero 引用过滤器
│   ├── pyproject.toml + uv.lock   # uv 依赖
│   └── search/ screening/ extractions/ synthesis/   # 空脚手架
│       outline/ draft/ references/ scripts/         # （clone 即用）
│
├── 05-学术绘图/             # 用 R 出科研/生信图（1 个技能）
│   ├── plotthis-r-plotting/       # SKILL.md + 40+ 函数 API 快照 + 3 个 R 脚本
│   └── _上游文档-AGENTS.md / -LICENSE.md
│
└── _meta/
    ├── SOURCES.md         # 来源、许可证、抓取时间
    ├── SECURITY-AUDIT.md  # 第三方代码安全审计报告
    └── VERIFICATION.md    # 实测记录（17/17 赛道生成验证）
```

---

## 三种用法

### 用法 1：直接对话（最省事）

把本库放在本地，对 AI 说触发词即可：

| 你想要 | 说什么 |
|---|---|
| 写大创申报书 | 「帮我写一份大创创新训练申报书，课题是无人机路径规划」 |
| 写奖学金申请 | 「我要申请国家奖学金，帮我写申请书」 |
| 从零开始做科研 | 「我想进课题组做科研，该从哪开始」 |
| 不会读论文 | 「教我怎么读一篇顶会论文」 |
| 论文要投稿被拒 | 「审稿人说 novelty 不足，帮我想 rebuttal」 |
| **写一篇文献综述** | 「用 nlr-workflow 帮我做一篇叙述性文献综述」 |
| **去掉文章的 AI 味** | 「用 lit-deregister 把这节改得像人写的」 |
| **用 R 画科研图** | 「用 plotthis-r-plotting 画分组散点图，出 PNG + PDF + R 脚本」 |
| **上线前查代码安全** | 「按安全自检清单过一遍我的接口」 |

### 用法 2：加载为 Skill（推荐给 Agent）

```
# 科研方法论总入口
01-科研入门/SKILL.md

# 申报材料线：按赛道加载
02-申报材料/科研立项/innovation-research/SKILL.md

# 文献综述工作流：6 个技能在
04-文献综述工作流/.claude/skills/lit-*/

# 学术绘图
05-学术绘图/plotthis-r-plotting/SKILL.md
```

### 用法 3：直接跑脚本出 Word

申报材料类的 `build.py` 可以把 JSON 数据直接渲染成 `.docx`：

```bash
# 先装依赖
pip install -r 02-申报材料/utils/requirements.txt

# 生成国家奖学金申请书
python 02-申报材料/奖学金/national-scholarship/build.py \
  --data my_info.json \
  --school 南京工业大学 \
  --out 国家奖学金申请书.docx
```

> `--school` 支持中英文校名，未收录的学校会按默认版式输出并提示，不会静默降级。

---

## 科研线速查：按阶段找文件

> 下表前 10 行的路径位于 `01-科研入门/` 下。

| 你现在处于 | 看这个 |
|---|---|
| 刚进组，不知道科研是什么 | `01-如何做科研.md` |
| 要开始一个方向，找不到论文 | `02-如何找论文.md` |
| 论文读不懂 / 读完就忘 | `03-如何读论文.md` |
| 要提创新点，不知道从哪想 | `04-如何想Idea.md` |
| 动笔写第一篇论文 | `05` → `06` ~ `11` |
| 图画不好，审稿人看不明白 | `12-论文画图指南.md`（**原理**） |
| 收到审稿意见要回复 | `13-如何Rebuttal.md` |
| 要讲组会 / 听报告 | `14` / `15` / `16` |
| 想建立长期习惯 | `17-好的科研习惯.md` |
| 想知道 AI 怎么辅助科研 | `18-AI辅助科研技巧.md` |
| **要写一整篇文献综述** | `../04-文献综述工作流/`（**可执行流水线**） |
| **要真的用 R 出图** | `../05-学术绘图/plotthis-r-plotting/`（**工具**） |

> 分工：`01-科研入门` 是**方法论**，`04` 是**流水线**，`05` 是**出图工具**。

---

## 两条线的使用边界

**科研线**：方法论，通用，偏向 AI / 计算机方向。核心作者是南京大学 LAMDA 实验室郭兰哲老师课题组。

**申报材料线**：文书生成，带格式排版。**有诚实底线** —— 技能内置约束：只写你能提供证据的事实，缺失必须追问，不许编造奖项和经历。申报材料造假会进档案，这是红线。

---

## 更新与致谢

来源、许可证、抓取时间见 [`_meta/SOURCES.md`](_meta/SOURCES.md)。
第三方代码审计结论见 [`_meta/SECURITY-AUDIT.md`](_meta/SECURITY-AUDIT.md)。

两个上游项目：

- [LAMDA-NeSy/Research-Starter-Kit](https://github.com/LAMDA-NeSy/Research-Starter-Kit) —— 科研入门指南
- [cuic19053-hue/awesome-student-ai-skills](https://github.com/cuic19053-hue/awesome-student-ai-skills) —— 大学生申报材料（MIT）

本库为个人整理版，保留原作者署名与免责声明。
