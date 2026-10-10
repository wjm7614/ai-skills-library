# 技能能力总览 · 337 个技能都干什么

> 数据来源：直接从 `dsh-skills/` 各技能 `SKILL.md` 的 frontmatter 解析，**逐条核对，非人工编造**。
> 仓库：<https://github.com/wjm7614/ai-skills-library>

## 上游来源一览（14 个仓库）

| 上游仓库 | 内容 | 产出技能数 |
|---|---|---|
| `zLanqing/codex-claude-academic-skills` | ARS-Codex 学术研究套件 | 1 |
| `Given-Dream/sciencedirect-live-session-fetcher` | ScienceDirect 实时会话抓取 | 1 |
| `Lucaswangzcx/literature-downloader-skill` | 文献批量下载器 | 1 |
| `junshi-research/research-junshi` | 军师科研助手 | 4 |
| `Imbad0202/academic-research-skills-codex` | 学术论文写作全家桶 | 13 |
| `Orchestra-Research/AI-Research-SKILLs` | AI 研究方法论 | 13 |
| `Master-cai/Research-Paper-Writing-Skills` | 论文写作技巧 | 4 |
| `appautomaton/latex-arxiv-SKILL` | LaTeX / arXiv 投稿 | 5 |
| `K-Dense-AI/scientific-agent-skills` | 科研工具索引（177 个 SKILL 元数据） | 0 |
| `obra/superpowers` | Superpowers 开发方法论 | 19 |
| `anthropics/skills` | Anthropic 官方技能 | 17 |
| `nextlevelbuilder/ui-ux-pro-max-skill` | UI/UX Pro Max | 12 |
| `pbakaus/impeccable` | Impeccable 设计品味 | 1 |
| `vercel-labs/agent-skills` | Vercel 工程技能 | 8 |

> `appautomaton/latex-arxiv-SKILL` 与 `K-Dense-AI/scientific-agent-skills` 的内容已合并进上述分类；
> `K-Dense-AI` 为 473MB 巨型仓库，按约定只收录了 177 个 SKILL.md 的元数据索引。

## 分类总览

| 分类 | 技能数 |
|---|---|
| 🔬 科研流程 · 从选题到投稿 | 23 |
| 📚 文献检索 · 获取 · 管理 | 15 |
| ✍️ 论文写作 · 排版 · 出图 | 18 |
| 📊 数据分析 · 统计 · 科研绘图 | 41 |
| 🧬 生物 · 医学 · 组学 | 84 |
| 🤖 AI / 深度学习工程 | 70 |
| 🎨 多模态 · 生成模型 | 21 |
| ⚛️ 量子 · 物理 · 化学仿真 | 8 |
| 🛠️ 软件开发 · 工程实践 | 32 |
| 🎯 前端 · UI/UX · 设计 | 13 |
| ☁️ 科研软件 · 云平台 · 工作流 | 15 |

---

## 🔬 一、科研流程 · 从选题到投稿

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `academic-research-suite` | 学术研究全套件：深度调研、文献/系统综述、元分析、研究问题、初稿、修订、路线图、摘要、引用核查、学术诚信检查、同行评审、论文成稿。含 sr-screener 筛文工具 | zLanqing |
| `hypothesis-generation` | 科学假设生成：从背景与观察出发，产出可检验的假设 | Orchestra-Research |
| `brainstorming-research-ideas` | 研究点子头脑风暴：结构化发散，产出候选方向 | Orchestra-Research |
| `creative-thinking-for-research` | 科研创造力方法：类比、反转、跨界移植等技巧 | Orchestra-Research |
| `scientific-brainstorming` | 科学选题发散与收敛 | Orchestra-Research |
| `experimental-design` | 实验设计：变量、对照、样本量、随机化与偏倚控制 | Orchestra-Research |
| `research-junshi` | 科研军师：基于你已有论文与长期记忆，做个性化文献精读推送 + 研究点子排序，每日新论文发现、战略建议 | junshi-research |
| `research-manager` | 科研过程留痕：任务结束后扫描会话，把决策、实验、死胡同、启发、转向写进 ara/ 目录，带人机来源标记 | junshi-research |
| `research-grants` | 科研基金申请：本子结构、评审要点、写作策略 | junshi-research |
| `iso-standards-readiness` | ISO 标准合规就绪度评估：按国际标准逐条对照差距 | K-Dense-AI |
| `market-research-reports` | 市场研究报告：行业分析、竞争格局、数据支撑 | K-Dense-AI |
| `literature-review` | 文献综述写作：叙述性/系统性综述的组织与批判性整合 | Orchestra-Research |
| `scientific-critical-thinking` | 科学批判性思维：识别论证漏洞、证据强度、因果误判 | Orchestra-Research |
| `rigor-reviewer` | 严谨性审查：统计与实验设计层面的严格挑错 | Orchestra-Research |
| `peer-review` | 同行评审：按期刊标准写审稿意见 | Imbad0202 |
| `scholar-evaluation` | 学者/成果评估：影响力、创新性、方法论质量打分 | Imbad0202 |
| `research-paper-writing` | 科研论文写作总纲：从结果到成稿 | Orchestra-Research |
| `ml-paper-writing` | ML/AI 顶会论文写作（NeurIPS/ICML/ICLR/ACL/AAAI/COLM），含从代码仓库成稿、论证结构、引用核验、camera-ready | Imbad0202 |
| `systems-paper-writing` | 系统类顶会论文（OSDI/NSDI/ASPLOS/SOSP）写作 | Imbad0202 |
| `research-writing-skill` | 研究写作技能包：论文各部分写作规范与句式 | junshi-research |
| `scientific-writing` | 科学写作：清晰、准确、可复现的表达规范 | Master-cai |
| `writing-guidelines` | 写作通用准则 | Master-cai |
| `arxiv-paper-writer` | arXiv 论文写作与投稿流程 | appautomaton |

---

## 📚 二、文献检索 · 获取 · 管理

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `literature-downloader` | 中文文献检索、筛选、批量采集与合法全文获取：关键词/检索式生成、DOI/PMID 查询、影响因子与分区筛选、OA 检查、引用链扩展、候选表、下载日志、去重、Zotero/BibTeX 整理 | Lucaswangzcx |
| `literature-live-session-pipeline` | 跨源实时会话采集：驱动 Edge 登录 ScienceDirect / 知网 / Web of Science，建 EndNote X9 库、导入 RIS、按 manifest 分组。专治浏览器登录或人机验证拦截 | Given-Dream |
| `paper-lookup` | 论文精确查找：标题/作者/DOI 定位原始文献 | Imbad0202 |
| `research-lookup` | 研究资料检索：背景、相关工作、领域综述检索 | Imbad0202 |
| `citation-management` | 引用管理：格式统一、去重、参考文献表生成 | Imbad0202 |
| `pyzotero` | Zotero 自动化：程序化读写文献库、标签、集合 | K-Dense-AI |
| `bgpt-paper-search` | BGPT 论文检索接入 | K-Dense-AI |
| `database-lookup` | 学术数据库通用查询 | K-Dense-AI |
| `open-notebook` | 开放笔记本：文献笔记与知识组织 | K-Dense-AI |
| `markitdown` | 文档转 Markdown：PDF/Office 转可解析文本 | K-Dense-AI |
| `liteparse` | 轻量文档解析 | K-Dense-AI |
| `paperzilla` | 文献元数据抓取与整理 | K-Dense-AI |
| `paperclip` | 论文附件与素材处理 | K-Dense-AI |
| `exa-search` | Exa 语义搜索接入 | K-Dense-AI |
| `parallel-web` | 并发网页抓取 | K-Dense-AI |

---

## ✍️ 三、论文写作 · 排版 · 出图

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `office-academic-skill` | 中文学术 Word/PPT 工作流：论文阅读报告、开题/组会 PPT、可编辑 DOCX/PPTX 生成、Office 文件检查、模板匹配、演讲备注、版面质量检查 | Imbad0202 |
| `scientific-slides` | 学术幻灯片制作规范 | Imbad0202 |
| `scientific-visualization` | 科学可视化：数据图表的设计与呈现 | Imbad0202 |
| `scientific-schematics` | 科学示意图：方法图、框架图的绘制 | Master-cai |
| `academic-plotting` | 论文级配图生成：给定论文章节或描述产出投稿质量插图 | Imbad0202 |
| `latex-posters` | LaTeX 学术海报 | appautomaton |
| `pptx-posters` | PPT 学术海报 | appautomaton |
| `latex-rhythm-refiner` | LaTeX 中文排版节奏优化 | appautomaton |
| `venue-templates` | 会议/期刊投稿模板（LaTeX/Word） | appautomaton |
| `presenting-conference-talks` | 会议报告演讲：结构与表达 | Imbad0202 |
| `markdown-mermaid-writing` | Markdown + Mermaid 图表写作 | Master-cai |
| `docx` | Word 文档读写与生成 | anthropics |
| `pptx` | PowerPoint 读写与生成 | anthropics |
| `xlsx` | Excel 表格读写与生成 | anthropics |
| `pdf` | PDF 读取、分割、合并、填表、提取 | anthropics |
| `doc-coauthoring` | 文档协作撰写 | anthropics |
| `theme-factory` | 主题样式工厂：统一配色与字体 | anthropics |
| `slides` | 幻灯片通用技能 | K-Dense-AI |

---

## 📊 四、数据分析 · 统计 · 科研绘图

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `statistical-analysis` | 统计分析：方法选择、假设检验、结果解读 | Orchestra-Research |
| `statistical-power` | 统计功效与样本量估算 | Orchestra-Research |
| `exploratory-data-analysis` | 探索性数据分析（EDA）流程 | Orchestra-Research |
| `uncertainty-and-units` | 不确定度与单位处理：误差传播、量纲检查 | Orchestra-Research |
| `matplotlib` | Matplotlib 绘图 | K-Dense-AI |
| `seaborn` | Seaborn 统计图 | K-Dense-AI |
| `polars` | Polars 高性能数据框操作 | K-Dense-AI |
| `polars-bio` | Polars 生物信息扩展 | K-Dense-AI |
| `vaex` | 超大表格数据探索 | K-Dense-AI |
| `dask` | 并行大数据计算 | K-Dense-AI |
| `zarr-python` | Zarr 分块数组存储 | K-Dense-AI |
| `networkx` | 网络/图分析 | K-Dense-AI |
| `sympy` | 符号数学计算 | K-Dense-AI |
| `statsmodels` | 统计建模 | K-Dense-AI |
| `pymc` | 贝叶斯建模（PyMC） | K-Dense-AI |
| `scikit-learn` | 机器学习（scikit-learn） | K-Dense-AI |
| `scikit-survival` | 生存分析 | K-Dense-AI |
| `umap-learn` | UMAP 降维 | K-Dense-AI |
| `shap` | 模型可解释性（SHAP） | K-Dense-AI |
| `simpy` | 离散事件仿真 | K-Dense-AI |
| `timesfm-forecasting` | 时序预测（TimesFM） | K-Dense-AI |
| `pymoo` | 多目标优化 | K-Dense-AI |
| `matlab` | MATLAB / Octave 代码与数值计算 | K-Dense-AI |
| `scientific-toolkit-skill` | 科研计算工具箱：MATLAB/Octave、Python 科学分析、信号处理、图像处理、统计、仿真、优化、投稿配图、传感器/时序数据、引用查询、常用科学库 | Imbad0202 |
| `analytical-method-validation` | 分析方法验证：检出限、线性、精密度、准确度等验证指标设计与判定 | K-Dense-AI |
| `hugging-science` | HuggingFace 科学资源检索与模型发现 | K-Dense-AI |
| `scikit-bio` | 生物信息学数据处理（scikit-bio） | K-Dense-AI |
| `what-if-oracle` | 假设情景推演：给定变量变化预判结果走向 | K-Dense-AI |
| `geomaster` | 地理空间分析 | K-Dense-AI |
| `geopandas` | 地理数据框 | K-Dense-AI |
| `usfiscaldata` | 美国政府财政数据 | K-Dense-AI |
| `fluidsim` | 流体仿真 | K-Dense-AI |
| `openpiv` | 粒子图像测速（PIV） | K-Dense-AI |
| `marine-carbonate-chemistry` | 海洋碳酸盐化学 | K-Dense-AI |
| `pybamm` | 电池建模 | K-Dense-AI |
| `pycalphad` | 相图计算（CALPHAD） | K-Dense-AI |
| `cantera` | 化学动力学 / 燃烧仿真 | K-Dense-AI |
| `tellurium` | 系统生物学建模 | K-Dense-AI |
| `pyhealth` | 医疗健康数据分析 | K-Dense-AI |

---

## 🧬 五、生物 · 医学 · 组学

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `biopython` | Biopython 序列处理 | K-Dense-AI |
| `bioservices` | 生物服务 API 聚合 | K-Dense-AI |
| `scanpy` | 单细胞 RNA 分析（Scanpy） | K-Dense-AI |
| `anndata` | 单细胞数据结构 | K-Dense-AI |
| `scvi-tools` | 单细胞变分推断 | K-Dense-AI |
| `scvelo` | RNA 速率分析 | K-Dense-AI |
| `pydeseq2` | 差异表达分析（DESeq2） | K-Dense-AI |
| `bulk-rnaseq` | 批量 RNA-seq 分析流程 | K-Dense-AI |
| `deeptools` | 深度测序数据处理 | K-Dense-AI |
| `pysam` | SAM/BAM 文件处理 | K-Dense-AI |
| `tiledbvcf` | VCF 变异数据管理 | K-Dense-AI |
| `onekgpd` | 千人基因组数据 | K-Dense-AI |
| `depmap` | DepMap 依赖图谱 | K-Dense-AI |
| `genomic-coordinates` | 基因组坐标转换 | K-Dense-AI |
| `genomic-intelligence` | 基因组智能分析 | K-Dense-AI |
| `geniml` | 基因组机器学习 | K-Dense-AI |
| `gtars` | 基因组区间工具 | K-Dense-AI |
| `gget` | 基因查询工具箱（gget） | K-Dense-AI |
| `etetoolkit` | 系统发育树处理 | K-Dense-AI |
| `phylogenetics` | 系统发育分析 | K-Dense-AI |
| `primer-design` | 引物设计 | K-Dense-AI |
| `qiime2-amplicon` | QIIME2 扩增子分析 | K-Dense-AI |
| `mageck` | CRISPR 筛选分析（MAGeCK） | K-Dense-AI |
| `pacsomatic` | PACSOmatic 变异分析 | K-Dense-AI |
| `pathogen-variant-surveillance` | 病原变异监测 | K-Dense-AI |
| `relsa-severity-assessment` | 疾病严重度评估 | K-Dense-AI |
| `folklore-variant-evidence` | 变异证据整合 | K-Dense-AI |
| `cellxgene-census` | CellxGene 细胞图谱 | K-Dense-AI |
| `cellprofiler` | 细胞图像分析 | K-Dense-AI |
| `histolab` | 组织切片图像处理 | K-Dense-AI |
| `pathml` | 病理图像机器学习 | K-Dense-AI |
| `imaging-data-commons` | 医学影像数据（IDC） | K-Dense-AI |
| `pydicom` | DICOM 医学影像 | K-Dense-AI |
| `omero-integration` | OMERO 显微图像平台 | K-Dense-AI |
| `bids` | 脑影像数据规范（BIDS） | K-Dense-AI |
| `nwb-conversion` | 神经数据格式转换（NWB） | K-Dense-AI |
| `neurokit2` | 神经生理信号处理 | K-Dense-AI |
| `neuropixels-analysis` | Neuropixels 电生理分析 | K-Dense-AI |
| `ontology-term-resolution` | 本体术语归一 | K-Dense-AI |
| `pathway-enrichment` | 通路富集分析 | K-Dense-AI |
| `primekg` | PrimeKG 知识图谱 | K-Dense-AI |
| `pyopenms` | 质谱数据处理（OpenMS） | K-Dense-AI |
| `matchms` | 质谱谱图匹配 | K-Dense-AI |
| `nmrglue` | NMR 数据处理 | K-Dense-AI |
| `13c-metabolic-flux` | 碳-13 代谢通量估计 | K-Dense-AI |
| `cobrapy` | 代谢网络建模（COBRA） | K-Dense-AI |
| `arboreto` | 基因调控网络推断 | K-Dense-AI |
| `aeon` | 时间序列机器学习 | K-Dense-AI |
| `flowio` | 流式细胞数据读写 | K-Dense-AI |
| `flowkit` | 流式细胞分析 | K-Dense-AI |
| `saelens` | Saelens 分析工具 | K-Dense-AI |
| `datamol` | 分子数据处理（Datamol） | K-Dense-AI |
| `rdkit` | 化学信息学（RDKit） | K-Dense-AI |
| `deepchem` | 深度化学（DeepChem） | K-Dense-AI |
| `medchem` | 药物化学规则 | K-Dense-AI |
| `molfeat` | 分子特征化 | K-Dense-AI |
| `pytdc` | 治疗数据共享集 | K-Dense-AI |
| `torchdrug` | 药物发现图神经网络 | K-Dense-AI |
| `diffdock` | 分子对接（DiffDock） | K-Dense-AI |
| `molecular-dynamics` | 分子动力学模拟 | K-Dense-AI |
| `glycoengineering` | 糖基化工程 | K-Dense-AI |
| `benchling-integration` | Benchling 实验室平台对接 | K-Dense-AI |
| `labarchive-integration` | LabArchives 电子实验记录 | K-Dense-AI |
| `latchbio-integration` | Latch Bio 云平台 | K-Dense-AI |
| `dnanexus-integration` | DNAnexus 云平台 | K-Dense-AI |
| `protocolsio-integration` | protocols.io 实验流程 | K-Dense-AI |
| `ginkgo-cloud-lab` | Ginkgo 云实验室 | K-Dense-AI |
| `waypoint-bio` | Waypoint Bio 平台 | K-Dense-AI |
| `tamarind` | Tamarind 生物平台 | K-Dense-AI |
| `adaptyv` | Adaptyv 蛋白实验 | K-Dense-AI |
| `rowan` | Rowan 化学计算平台 | K-Dense-AI |
| `fictiv` | Fictiv 制造对接 | K-Dense-AI |
| `opentrons-integration` | Opentrons 自动化移液 | K-Dense-AI |
| `pylabrobot` | 实验室机器人编排 | K-Dense-AI |
| `lab-hardware-cad` | 实验硬件 CAD | K-Dense-AI |
| `ncats-arax` | NCATs ARax 问答 | K-Dense-AI |
| `alphagenome` | AlphaGenome 基因组模型 | K-Dense-AI |
| `esm` | ESM 蛋白语言模型 | K-Dense-AI |
| `pkpd-modeling` | 药代/药效动力学建模 | K-Dense-AI |
| `clinical-decision-support` | 临床决策支持 | K-Dense-AI |
| `clinical-reports` | 临床报告撰写 | K-Dense-AI |
| `treatment-plans` | 治疗方案制定 | K-Dense-AI |
| `deepspot-m` | DeepSpot-M 分析 | K-Dense-AI |

---

## 🤖 六、AI / 深度学习工程

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `transformers` | HuggingFace Transformers 使用 | K-Dense-AI |
| `peft` | 参数高效微调（PEFT/LoRA） | K-Dense-AI |
| `trl-fine-tuning` | RLHF / TRL 微调 | K-Dense-AI |
| `grpo-rl-training` | GRPO 强化学习训练 | K-Dense-AI |
| `simpo` | SimPO 偏好优化 | K-Dense-AI |
| `openrlhf` | OpenRLHF 强化学习框架 | K-Dense-AI |
| `verl` | VERL 强化学习训练 | K-Dense-AI |
| `slime` | SLIME 强化学习框架 | K-Dense-AI |
| `miles` | Miles 训练框架 | K-Dense-AI |
| `axolotl` | Axolotl 微调框架 | K-Dense-AI |
| `llama-factory` | LLaMA-Factory 微调 | K-Dense-AI |
| `unsloth` | Unsloth 加速微调 | K-Dense-AI |
| `litgpt` | LitGPT 训练 | K-Dense-AI |
| `nanogpt` | nanoGPT 教学实现 | K-Dense-AI |
| `torchtitan` | TorchTitan 大模型训练 | K-Dense-AI |
| `torchforge` | TorchForge 训练框架 | K-Dense-AI |
| `megatron-core` | Megatron-Core 并行训练 | K-Dense-AI |
| `moe-training` | MoE 混合专家训练 | K-Dense-AI |
| `pytorch-fsdp2` | PyTorch FSDP2 分布式训练 | K-Dense-AI |
| `pytorch-lightning` | PyTorch Lightning | K-Dense-AI |
| `deepspeed` | DeepSpeed 训练加速 | K-Dense-AI |
| `accelerate` | HuggingFace Accelerate | K-Dense-AI |
| `ray-train` | Ray Train 分布式训练 | K-Dense-AI |
| `ray-data` | Ray Data 数据管道 | K-Dense-AI |
| `flash-attention` | FlashAttention 加速注意力 | K-Dense-AI |
| `optimize-for-gpu` | GPU 优化 | K-Dense-AI |
| `bitsandbytes` | 量化训练（bitsandbytes） | K-Dense-AI |
| `awq` | AWQ 量化 | K-Dense-AI |
| `gptq` | GPTQ 量化 | K-Dense-AI |
| `hqq` | HQQ 量化 | K-Dense-AI |
| `gguf` | GGUF 格式与量化 | K-Dense-AI |
| `model-merging` | 模型合并 | K-Dense-AI |
| `model-pruning` | 模型剪枝 | K-Dense-AI |
| `knowledge-distillation` | 知识蒸馏 | K-Dense-AI |
| `speculative-decoding` | 投机解码加速 | K-Dense-AI |
| `long-context` | 长上下文技术 | K-Dense-AI |
| `llama-cpp` | llama.cpp 本地推理 | K-Dense-AI |
| `vllm` | vLLM 高吞吐推理 | K-Dense-AI |
| `sglang` | SGLang 推理框架 | K-Dense-AI |
| `tensorrt-llm` | TensorRT-LLM 推理 | K-Dense-AI |
| `lm-evaluation-harness` | LM 评测框架 | K-Dense-AI |
| `nemo-evaluator` | NeMo 评测 | K-Dense-AI |
| `bigcode-evaluation-harness` | 代码模型评测 | K-Dense-AI |
| `nemo-curator` | NeMo 数据治理 | K-Dense-AI |
| `nemo-guardrails` | NeMo 安全护栏 | K-Dense-AI |
| `llamaguard` | Llama Guard 内容安全 | K-Dense-AI |
| `constitutional-ai` | 宪法 AI 对齐 | K-Dense-AI |
| `prompt-guard` | 提示词注入防护 | K-Dense-AI |
| `guidance` | Guidance 结构化生成 | K-Dense-AI |
| `outlines` | Outlines 约束生成 | K-Dense-AI |
| `dspy` | DSPy 提示词编程 | K-Dense-AI |
| `instructor` | 结构化输出（Instructor） | K-Dense-AI |
| `langchain` | LangChain 应用编排 | K-Dense-AI |
| `llamaindex` | LlamaIndex 检索增强 | K-Dense-AI |
| `crewai` | CrewAI 多智能体 | K-Dense-AI |
| `autogpt` | AutoGPT 自主智能体 | K-Dense-AI |
| `a-evolve` | AI 智能体自动进化优化 | K-Dense-AI |
| `autoresearch-skill` | 自动研究智能体 | K-Dense-AI |
| `autoskill` | 技能自动生成 | K-Dense-AI |
| `pi-agent` | PI Agent | K-Dense-AI |
| `sentence-transformers` | 句向量嵌入 | K-Dense-AI |
| `huggingface-tokenizers` | 分词器训练与使用 | K-Dense-AI |
| `sentencepiece` | SentencePiece 分词 | K-Dense-AI |
| `faiss` | FAISS 向量检索 | K-Dense-AI |
| `chroma` | Chroma 向量库 | K-Dense-AI |
| `qdrant` | Qdrant 向量库 | K-Dense-AI |
| `pinecone` | Pinecone 向量库 | K-Dense-AI |
| `nnsight` | 模型内部干预（nnsight） | K-Dense-AI |
| `pyvene` | 模型激活干预（pyvene） | K-Dense-AI |
| `transformer-lens` | TransformerLens 可解释性 | K-Dense-AI |

---

## 🎨 七、多模态 · 生成模型

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `stable-diffusion` | Stable Diffusion 图像生成 | K-Dense-AI |
| `generate-image` | 图像生成 | K-Dense-AI |
| `clip` | CLIP 图文对齐 | K-Dense-AI |
| `blip-2` | BLIP-2 图文理解 | K-Dense-AI |
| `llava` | LLaVA 多模态大模型 | K-Dense-AI |
| `whisper` | Whisper 语音识别 | K-Dense-AI |
| `audiocraft` | AudioCraft 音频生成 | K-Dense-AI |
| `segment-anything` | Segment Anything 分割 | K-Dense-AI |
| `cosmos-policy` | Cosmos 世界模型策略 | K-Dense-AI |
| `openpi` | OpenPI 机器人策略 | K-Dense-AI |
| `openvla-oft` | OpenVLA 机器人微调 | K-Dense-AI |
| `pufferlib` | PufferLib 强化学习 | K-Dense-AI |
| `stable-baselines3` | Stable-Baselines3 强化学习 | K-Dense-AI |
| `torch-geometric` | 图神经网络（PyG） | K-Dense-AI |
| `mamba` | Mamba 状态空间模型 | K-Dense-AI |
| `rwkv` | RWKV 架构 | K-Dense-AI |
| `algorithmic-art` | 算法艺术生成 | anthropics |
| `canvas-design` | 画布设计 | anthropics |
| `slack-gif-creator` | GIF 动图制作 | anthropics |
| `infographics` | 信息图设计 | K-Dense-AI |
| `banner-design` | 横幅/海报设计 | nextlevelbuilder |

---

## ⚛️ 八、量子 · 物理 · 化学仿真

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `qiskit` | Qiskit 量子计算 | K-Dense-AI |
| `cirq` | Cirq 量子电路 | K-Dense-AI |
| `pennylane` | PennyLane 量子机器学习 | K-Dense-AI |
| `qutip` | QuTiP 量子系统仿真 | K-Dense-AI |
| `pymatgen` | 材料基因组学（pymatgen） | K-Dense-AI |
| `astropy` | 天文数据处理（Astropy） | K-Dense-AI |
| `arbor` | Arbor 神经仿真 | K-Dense-AI |
| `relion` | 冷冻电镜三维重构（RELION） | K-Dense-AI |

---

## 🛠️ 九、软件开发 · 工程实践

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `brainstorming` | 需求头脑风暴：先想清再动手 | obra |
| `writing-plans` | 写实现计划 | obra |
| `executing-plans` | 按计划执行 | obra |
| `subagent-driven-development` | 子智能体驱动开发 | obra |
| `dispatching-parallel-agents` | 并行智能体调度 | obra |
| `test-driven-development` | 测试驱动开发（TDD） | obra |
| `systematic-debugging` | 系统化调试方法论 | obra |
| `verification-before-completion` | 完工前验证 | obra |
| `requesting-code-review` | 请求代码审查 | obra |
| `receiving-code-review` | 接收代码审查 | obra |
| `finishing-a-development-branch` | 开发分支收尾 | obra |
| `using-git-worktrees` | Git worktree 并行开发 | obra |
| `using-superpowers` | Superpowers 使用入门 | obra |
| `diagnosing-superpowers` | Superpowers 故障诊断 | obra |
| `writing-skills` | 编写新技能 | obra |
| `skill-creator` | 技能创建器 | obra |
| `hypogenic` | 假设生成与验证自动化流水线 | K-Dense-AI |
| `ml-training-recipes` | 机器学习训练配方：超参、调度、常见坑 | K-Dense-AI |
| `internal-comms` | 内部沟通文书：通知、公告、说明 | anthropics |
| `consciousness-council` | 多角色审议决策 | obra |
| `discernment-nudge` | 判断力提示 | obra |
| `dhdna-profiler` | 需求 DNA 画像 | obra |
| `codex-skill` | Codex 协作 | K-Dense-AI |
| `collaborating-with-claude` | 与 Claude 协作 | K-Dense-AI |
| `collaborating-with-gemini` | 与 Gemini 协作 | K-Dense-AI |
| `compiler` | 编译器相关 | K-Dense-AI |
| `webapp-testing` | Web 应用自动化测试 | anthropics |
| `deploy-to-vercel` | 部署到 Vercel | vercel-labs |
| `vercel-optimize` | Vercel 性能优化 | vercel-labs |
| `vercel-cli-with-tokens` | Vercel CLI 带 token 操作 | vercel-labs |
| `mcp-builder` | MCP 服务器构建 | anthropics |
| `web-artifacts-builder` | Web 产物构建 | anthropics |

---

## 🎯 十、前端 · UI/UX · 设计

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `ui-ux-pro-max` | UI/UX 全套设计能力：界面、交互、视觉、体验优化 | nextlevelbuilder |
| `ui-styling` | UI 样式系统 | nextlevelbuilder |
| `design-system` | 设计系统搭建 | nextlevelbuilder |
| `design` | 设计通用能力 | nextlevelbuilder |
| `brand` | 品牌设计 | nextlevelbuilder |
| `brand-guidelines` | 品牌规范 | anthropics |
| `composition-patterns` | 组件组合模式 | nextlevelbuilder / vercel-labs |
| `frontend-design` | 前端界面设计 | anthropics / nextlevelbuilder |
| `react-best-practices` | React 最佳实践 | nextlevelbuilder / vercel-labs |
| `react-native-skills` | React Native 开发 | nextlevelbuilder / vercel-labs |
| `react-view-transitions` | React 视图过渡动画 | nextlevelbuilder / vercel-labs |
| `web-design-guidelines` | Web 设计准则 | nextlevelbuilder / vercel-labs |
| `impeccable` | 设计品味精修：交付级视觉打磨 | pbakaus |

---

## ☁️ 十一、科研软件 · 云平台 · 工作流

| 技能 | 能干什么 | 来源 |
|---|---|---|
| `modal` | Modal 云算力 | K-Dense-AI |
| `lambda-labs` | Lambda Labs GPU 云 | K-Dense-AI |
| `skypilot` | SkyPilot 多云调度 | K-Dense-AI |
| `datalad` | DataLad 数据版本管理 | K-Dense-AI |
| `lamindb` | LaminDB 数据溯源 | K-Dense-AI |
| `mlflow` | MLflow 实验追踪 | K-Dense-AI |
| `weights-and-biases` | W&B 实验跟踪 | K-Dense-AI |
| `swanlab` | SwanLab 实验跟踪 | K-Dense-AI |
| `tensorboard` | TensorBoard 可视化 | K-Dense-AI |
| `langsmith` | LangSmith LLM 追踪 | K-Dense-AI |
| `phoenix` | Phoenix 可观测性 | K-Dense-AI |
| `nextflow` | Nextflow 生信流程 | K-Dense-AI |
| `academy-guide` | Claude / Claude 产品使用答疑：回答相关问题时先查此技能 | K-Dense-AI |
| `claude-api` | Claude API 开发：模型、工具调用、缓存、流式、成本 | anthropics |
| `get-available-resources` | 查询当前可用资源 | anthropics |

---

## 怎么用

1. **不用记名字**：DSH 启动时只读每个技能的 `description` 摘要，你正常提需求，模型自己判断该加载哪个。
2. **想强制指定**：`/技能名`，比如 `/literature-downloader` 或 `/ml-paper-writing`。
3. **优先看这几个**（你研一在校最常用）：
   - `research-junshi` — 每天推个性化论文 + 给研究点子排序
   - `literature-downloader` — 中文文献检索到批量获取全流程
   - `academic-research-suite` — 从选题到投稿的完整套件（功能最全的一个）
   - `office-academic-skill` — 中文论文阅读报告 / 组会 PPT 的 Word/PPT 生成
   - `ml-paper-writing` — 顶会论文写作
   - `academic-plotting` / `scientific-visualization` — 论文配图

完整技能清单（含文件数）见 [`INDEX.md`](../dsh-skills/INDEX.md)。
