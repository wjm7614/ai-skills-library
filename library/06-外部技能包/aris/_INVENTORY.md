# ARIS 自主科研循环 · 技能清单

上游：https://github.com/wanshuiyin/Auto-claude-code-research-in-sleep  
许可：MIT  
提交：`3fefd34146d3`  
收录：**197 个 SKILL.md** / 391 文件 / 6.09 MB

> 页面整理：已剔除 docs/（14.9 MB）、tests/、assets/（5.8 MB）、mcp-servers/、aris-monitor/、tools/。

| # | 目录 | 技能名 | 作用 |
|---|---|---|---|
| 1 | `skills/ablation-planner` | `ablation-planner` | Use when main results pass result-to-claim (claim_supported=yes or partial) and ablation s… |
| 2 | `skills/alphaxiv` | `alphaxiv` | Quick single-paper lookup via AlphaXiv LLM-optimized summaries with tiered source fallback… |
| 3 | `skills/analyze-results` | `analyze-results` | Analyze ML experiment results, compute statistics, generate comparison tables and insights… |
| 4 | `skills/arxiv` | `arxiv` | Search, download, and summarize academic papers from arXiv. Use when user says "search arx… |
| 5 | `skills/auto-paper-improvement-loop` | `auto-paper-improvement-loop` | Autonomously improve a generated paper via GPT-6-Astra xhigh review → implement fixes → re… |
| 6 | `skills/auto-review-loop` | `auto-review-loop` | Autonomous multi-round research review loop. In Copilot CLI it defaults to the native comp… |
| 7 | `skills/auto-review-loop-llm` | `auto-review-loop-llm` | Autonomous research review loop using any OpenAI-compatible LLM API. Configure via llm-cha… |
| 8 | `skills/auto-review-loop-minimax` | `auto-review-loop-minimax` | Autonomous multi-round research review loop using MiniMax API. Use when you want to use Mi… |
| 9 | `skills/citation-audit` | `citation-audit` | Zero-context verification that every bibliographic entry in the paper is real, correctly a… |
| 10 | `skills/citation-crosscheck` | `citation-crosscheck` | Double-blind bibliographic cross-check: one agent extracts each cited entry verbatim from … |
| 11 | `skills/claims-drafting` | `claims-drafting` | Draft patent claims for an invention. Use when user says \"撰写权利要求\", \"draft claims\", \"写… |
| 12 | `skills/comm-lit-review` | `comm-lit-review` | Communications-domain literature review with Claude-style knowledge-base-first retrieval. … |
| 13 | `skills/deepxiv` | `deepxiv` | Search and progressively read open-access academic papers through DeepXiv. Use when the us… |
| 14 | `skills/dse-loop` | `dse-loop` | Autonomous design space exploration loop for computer architecture and EDA. Runs a program… |
| 15 | `skills/embodiment-description` | `embodiment-description` | Write detailed embodiment descriptions for patent specifications. Use when user says \"撰写实… |
| 16 | `skills/exa-search` | `exa-search` | AI-powered web search via Exa with content extraction. Use when user says "exa search", "w… |
| 17 | `skills/experiment-audit` | `experiment-audit` | Audit experiment integrity before claiming results. Uses cross-model review (external revi… |
| 18 | `skills/experiment-bridge` | `experiment-bridge` | Workflow 1.5: Bridge between idea discovery and auto review. Reads EXPERIMENT_PLAN.md, imp… |
| 19 | `skills/experiment-plan` | `experiment-plan` | Turn a refined research proposal or method idea into a detailed, claim-driven experiment r… |
| 20 | `skills/experiment-queue` | `experiment-queue` | SSH job queue for multi-seed/multi-config ML experiments with OOM-aware retry, stale-scree… |
| 21 | `skills/feishu-notify` | `feishu-notify` | Send notifications to Feishu/Lark. Internal utility used by other skills, or manually via … |
| 22 | `skills/figure-description` | `figure-description` | Process user-provided patent figures and generate formal drawing descriptions. Use when us… |
| 23 | `skills/figure-spec` | `figure-spec` | Generate deterministic publication-quality architecture, workflow, and pipeline diagrams f… |
| 24 | `skills/firecrawl-search` | `firecrawl-search` | Web search and page scraping via Firecrawl, returning full-page markdown. Use when user sa… |
| 25 | `skills/formula-derivation` | `formula-derivation` | Structures and derives research formulas when the user wants to 推导公式, build a theory line,… |
| 26 | `skills/gemini-search` | `gemini-search` | Search research papers via Gemini for broad literature discovery. Use when user says "gemi… |
| 27 | `skills/grant-proposal` | `grant-proposal` | Draft a structured grant proposal from research ideas and literature. Supports KAKENHI (Ja… |
| 28 | `skills/idea-creator` | `idea-creator` | Generate and rank research ideas given a broad direction. Use when user says "找idea", "bra… |
| 29 | `skills/idea-discovery` | `idea-discovery` | Workflow 1: Full idea discovery pipeline to go from a broad research direction to validate… |
| 30 | `skills/idea-discovery-robot` | `idea-discovery-robot` | Workflow 1 adaptation for robotics and embodied AI. Orchestrates robotics-aware literature… |
| 31 | `skills/integrity-forensics` | `integrity-forensics` | Run the Anti-Autoresearch integrity-forensics sweep (span-anchored evidence ledger → GPT a… |
| 32 | `skills/interview-cheatsheet` | `interview-cheatsheet` | Generate a long-form Chinese interview-prep cheat sheet on a specific ML/LLM topic — formu… |
| 33 | `skills/invention-structuring` | `invention-structuring` | Structure a raw invention idea into a formal invention disclosure. Use when user says \"构建… |
| 34 | `skills/jurisdiction-format` | `jurisdiction-format` | Compile patent application into jurisdiction-specific filing format. Use when user says \"… |
| 35 | `skills/keenable-search` | `keenable-search` | Keyless web search and page fetch via Keenable. Use when user says "keenable search", "web… |
| 36 | `skills/kill-argument` | `kill-argument` | Two-thread adversarial review: a fresh reviewer constructs the strongest 200-word rejectio… |
| 37 | `skills/lean-formalize` | `lean-formalize` | Develop and verify a mathematical proof in Lean, continue an incomplete Lean project, or a… |
| 38 | `skills/mermaid-diagram` | `mermaid-diagram` | Generate Mermaid diagrams from user requirements. Supports flowcharts, sequence diagrams, … |
| 39 | `skills/meta-apply` | `meta-apply` | Privileged applier that LANDS meta-optimize / corpus-audit patches the user approved — the… |
| 40 | `skills/meta-optimize` | `meta-optimize` | Analyze ARIS usage logs and propose optimizations to SKILL.md files, reviewer prompts, and… |
| 41 | `skills/monitor-experiment` | `monitor-experiment` | Monitor running experiments, check progress, collect results. Use when user says "check re… |
| 42 | `skills/novelty-check` | `novelty-check` | Verify research idea novelty against recent literature. Use when user says "查新", "novelty … |
| 43 | `skills/openalex` | `openalex` | Search academic papers via OpenAlex API for open citation data, institutional affiliations… |
| 44 | `skills/overleaf-sync` | `overleaf-sync` | Two-way sync between a local paper directory and an Overleaf project, so ARIS audit/edit w… |
| 45 | `skills/paper-claim-audit` | `paper-claim-audit` | Zero-context verification that every number, comparison, and scope claim in the paper matc… |
| 46 | `skills/paper-compile` | `paper-compile` | Compile LaTeX paper to PDF, fix errors, and verify output. Use when user says \"编译论文\", \"… |
| 47 | `skills/paper-figure` | `paper-figure` | Generate publication-quality figures and tables from experiment results. Use when user say… |
| 48 | `skills/paper-illustration` | `paper-illustration` | Generate publication-quality AI illustrations for academic papers using Gemini image gener… |
| 49 | `skills/paper-illustration-image2` | `paper-illustration-image2` | Generate publication-quality academic illustrations through a local Codex app-server bridg… |
| 50 | `skills/paper-plan` | `paper-plan` | Generate a structured paper outline from review conclusions and experiment results. Use wh… |
| 51 | `skills/paper-poster` | `paper-poster` | DEPRECATED — superseded by /paper-poster-html. Kept only as a redirect for muscle memory; … |
| 52 | `skills/paper-poster-html` | `paper-poster-html` | DEFAULT poster pipeline — build an academic conference poster (ICML/NeurIPS/ICLR/CVPR/...)… |
| 53 | `skills/paper-slides` | `paper-slides` | Generate conference presentation slides (beamer LaTeX → PDF + editable PPTX) from a compil… |
| 54 | `skills/paper-talk` | `paper-talk` | End-to-end conference talk pipeline: paper → slide outline → Beamer + PPTX → per-page poli… |
| 55 | `skills/paper-write` | `paper-write` | Draft LaTeX paper section by section from an outline. Use when user says \"写论文\", \"write … |
| 56 | `skills/paper-writing` | `paper-writing` | Workflow 3: Full paper writing pipeline that goes from a narrative report to a polished, s… |
| 57 | `skills/patent-novelty-check` | `patent-novelty-check` | Assess patent novelty and non-obviousness against prior art. Use when user says \"专利查新\", … |
| 58 | `skills/patent-pipeline` | `patent-pipeline` | Full patent drafting pipeline from invention description to jurisdiction-formatted filing … |
| 59 | `skills/patent-review` | `patent-review` | Get an external patent examiner review of a patent application. Use when user says \"专利审查\… |
| 60 | `skills/pixel-art` | `pixel-art` | Generate pixel art SVG illustrations for READMEs, docs, or slides. Use when user says "画像素… |
| 61 | `skills/prior-art-search` | `prior-art-search` | Search patent databases and academic literature for prior art relevant to an invention. Us… |
| 62 | `skills/proof-checker` | `proof-checker` | Rigorous mathematical proof verification and fixing workflow. Reads a LaTeX proof, identif… |
| 63 | `skills/proof-orchestrator` | `proof-orchestrator` | Manage a stateful, run-directory-based proof project: continuation across runs, run-local … |
| 64 | `skills/proof-writer` | `proof-writer` | Writes rigorous mathematical proofs for ML/AI theory. Use when asked to prove a theorem, l… |
| 65 | `skills/qzcli` | `qzcli` | Manage GPU compute jobs on the Qizhi (启智) platform using qzcli — a kubectl-style CLI tool.… |
| 66 | `skills/rebuttal` | `rebuttal` | Workflow 4: Submission rebuttal pipeline. Parses external reviews, enforces coverage and g… |
| 67 | `skills/render-html` | `render-html` | Render an ARIS Markdown / JSON artifact (IDEA_REPORT, AUTO_REVIEW, KILL_ARGUMENT, PAPER_PL… |
| 68 | `skills/research-implement-feature` | `research-implement-feature` | Build a working artifact from a plain \"implement X for me\" request: a running end-to-end… |
| 69 | `skills/research-lit` | `research-lit` | Search and analyze research papers, find related work, summarize key ideas. Use when user … |
| 70 | `skills/research-pipeline` | `research-pipeline` | Full end-to-end research pipeline: from a broad research direction through idea discovery,… |
| 71 | `skills/research-refine` | `research-refine` | Turn a vague research direction into a problem-anchored, elegant, frontier-aware, implemen… |
| 72 | `skills/research-refine-pipeline` | `research-refine-pipeline` | Run an end-to-end workflow that chains `research-refine` and `experiment-plan`. Use when t… |
| 73 | `skills/research-review` | `research-review` | Get a deep critical review of research from a selected reviewer (Codex by default, Gemini,… |
| 74 | `skills/research-wiki` | `research-wiki` | Persistent research knowledge base that accumulates papers, ideas, experiments, claims, an… |
| 75 | `skills/resubmit-pipeline` | `resubmit-pipeline` | Workflow 5: orchestrate a text-only resubmit of a polished paper to a different venue unde… |
| 76 | `skills/result-to-claim` | `result-to-claim` | Use when experiments complete to judge what claims the results support, what they don't, a… |
| 77 | `skills/run-experiment` | `run-experiment` | Deploy and run ML experiments on local, remote, Vast.ai, or Modal serverless GPU. Use when… |
| 78 | `skills/semantic-scholar` | `semantic-scholar` | Search published venue papers (IEEE, ACM, Springer, etc.) via Semantic Scholar API. Comple… |
| 79 | `skills/serverless-modal` | `serverless-modal` | Run GPU workloads on Modal — training, fine-tuning, inference, batch processing. Zero-conf… |
| 80 | `skills/skills-codex/ablation-planner` | `ablation-planner` | Use when main results pass result-to-claim (`claim_supported = yes` or `partial`) and abla… |
| 81 | `skills/skills-codex/alphaxiv` | `alphaxiv` | Quick single-paper lookup via AlphaXiv LLM-optimized summaries with tiered source fallback… |
| 82 | `skills/skills-codex/analyze-results` | `analyze-results` | Analyze ML experiment results, compute statistics, generate comparison tables and insights… |
| 83 | `skills/skills-codex/arxiv` | `arxiv` | Search, download, and summarize academic papers from arXiv. Use when user says \"search ar… |
| 84 | `skills/skills-codex/auto-paper-improvement-loop` | `auto-paper-improvement-loop` | Autonomously improve a generated paper via GPT-6-Astra xhigh review → implement fixes → re… |
| 85 | `skills/skills-codex/auto-review-loop` | `auto-review-loop` | Autonomous multi-round research review loop. Uses a fresh Codex agent or selected Gemini, … |
| 86 | `skills/skills-codex/auto-review-loop-llm` | `auto-review-loop-llm` | Autonomous research review loop using any OpenAI-compatible LLM API. Configure via llm-cha… |
| 87 | `skills/skills-codex/auto-review-loop-minimax` | `auto-review-loop-minimax` | Autonomous multi-round research review loop using MiniMax API. Use when you want to use Mi… |
| 88 | `skills/skills-codex/citation-audit` | `citation-audit` | Zero-context verification that every bibliographic entry in the paper is real, correctly a… |
| 89 | `skills/skills-codex/citation-crosscheck` | `citation-crosscheck` | Conditionally double-blind bibliographic cross-check (double-blind only when the host can … |
| 90 | `skills/skills-codex/claims-drafting` | `claims-drafting` | Draft patent claims for an invention. Use when user says \"撰写权利要求\", \"draft claims\", \"写… |
| 91 | `skills/skills-codex/comm-lit-review` | `comm-lit-review` | Communications-domain literature review with Claude-style knowledge-base-first retrieval. … |
| 92 | `skills/skills-codex/deepxiv` | `deepxiv` | Search and progressively read open-access academic papers through DeepXiv. Use when the us… |
| 93 | `skills/skills-codex/dse-loop` | `dse-loop` | Autonomous design space exploration loop for computer architecture and EDA. Runs a program… |
| 94 | `skills/skills-codex/embodiment-description` | `embodiment-description` | Write detailed embodiment descriptions for patent specifications. Use when user says \"撰写实… |
| 95 | `skills/skills-codex/exa-search` | `exa-search` | AI-powered web search via Exa with content extraction. Use when user says "exa search", "w… |
| 96 | `skills/skills-codex/experiment-audit` | `experiment-audit` | Audit experiment integrity before claiming results. Uses fresh-agent GPT-6-Astra review (s… |
| 97 | `skills/skills-codex/experiment-bridge` | `experiment-bridge` | Workflow 1.5: Bridge between idea discovery and auto review. Reads EXPERIMENT_PLAN.md, imp… |
| 98 | `skills/skills-codex/experiment-plan` | `experiment-plan` | Turn a refined research proposal or method idea into a detailed, claim-driven experiment r… |
| 99 | `skills/skills-codex/experiment-queue` | `experiment-queue` | SSH job queue for multi-seed/multi-config ML experiments with OOM-aware retry, stale-scree… |
| 100 | `skills/skills-codex/feishu-notify` | `feishu-notify` | Send notifications to Feishu/Lark. Internal utility used by other skills, or manually via … |
| 101 | `skills/skills-codex/figure-description` | `figure-description` | Process user-provided patent figures and generate formal drawing descriptions. Use when us… |
| 102 | `skills/skills-codex/figure-spec` | `figure-spec` | Generate deterministic publication-quality architecture, workflow, and pipeline diagrams f… |
| 103 | `skills/skills-codex/firecrawl-search` | `firecrawl-search` | Web search and page scraping via Firecrawl, returning full-page markdown. Use when user sa… |
| 104 | `skills/skills-codex/formula-derivation` | `formula-derivation` | Structures and derives research formulas when the user wants to 推导公式, build a theory line,… |
| 105 | `skills/skills-codex/gemini-search` | `gemini-search` | Search research papers via Gemini for broad literature discovery. Use when user says "gemi… |
| 106 | `skills/skills-codex/grant-proposal` | `grant-proposal` | Draft a structured grant proposal from research ideas and literature. Supports KAKENHI (Ja… |
| 107 | `skills/skills-codex/idea-creator` | `idea-creator` | Generate and rank research ideas given a broad direction. Use when user says \"\u627eidea\… |
| 108 | `skills/skills-codex/idea-discovery` | `idea-discovery` | Workflow 1: Full idea discovery pipeline to go from a broad research direction to validate… |
| 109 | `skills/skills-codex/idea-discovery-robot` | `idea-discovery-robot` | Workflow 1 adaptation for robotics and embodied AI. Orchestrates robotics-aware literature… |
| 110 | `skills/skills-codex/integrity-forensics` | `integrity-forensics` | Run the Anti-Autoresearch integrity-forensics DETERMINISTIC slice (numeric core + rules-on… |
| 111 | `skills/skills-codex/interview-cheatsheet` | `interview-cheatsheet` | Generate a long-form Chinese interview-prep cheat sheet on a specific ML/LLM topic — formu… |
| 112 | `skills/skills-codex/invention-structuring` | `invention-structuring` | Structure a raw invention idea into a formal invention disclosure. Use when user says \"构建… |
| 113 | `skills/skills-codex/jurisdiction-format` | `jurisdiction-format` | Compile patent application into jurisdiction-specific filing format. Use when user says \"… |
| 114 | `skills/skills-codex/keenable-search` | `keenable-search` | Keyless web search and page fetch via Keenable. Use when user says "keenable search", "web… |
| 115 | `skills/skills-codex/kill-argument` | `kill-argument` | Two-thread adversarial review: a fresh reviewer constructs the strongest 200-word rejectio… |
| 116 | `skills/skills-codex/lean-formalize` | `lean-formalize` | Develop and verify a mathematical proof in Lean, continue an incomplete Lean project, or a… |
| 117 | `skills/skills-codex/mermaid-diagram` | `mermaid-diagram` | Generate Mermaid diagrams from user requirements. Save .mmd and .md files to figures/ with… |
| 118 | `skills/skills-codex/meta-apply` | `meta-apply` | Privileged applier that LANDS meta-optimize / corpus-audit patches the user approved, with… |
| 119 | `skills/skills-codex/meta-optimize` | `meta-optimize` | Analyze ARIS usage logs and propose optimizations to SKILL.md files, reviewer prompts, and… |
| 120 | `skills/skills-codex/monitor-experiment` | `monitor-experiment` | Monitor running experiments, check progress, collect results. Use when user says \"check r… |
| 121 | `skills/skills-codex/novelty-check` | `novelty-check` | Verify research idea novelty against recent literature. Use when user says \"\u67e5\u65b0\… |
| 122 | `skills/skills-codex/openalex` | `openalex` | Search academic papers via OpenAlex API for open citation data, institutional affiliations… |
| 123 | `skills/skills-codex/overleaf-sync` | `overleaf-sync` | Two-way sync between a local paper directory and an Overleaf project, so ARIS audit/edit w… |
| 124 | `skills/skills-codex/paper-claim-audit` | `paper-claim-audit` | Zero-context verification that every number, comparison, and scope claim in the paper matc… |
| 125 | `skills/skills-codex/paper-compile` | `paper-compile` | Compile LaTeX paper to PDF, fix errors, and verify output. Use when user says \\\"\u7f16\u… |
| 126 | `skills/skills-codex/paper-figure` | `paper-figure` | Generate publication-quality figures and tables from experiment results. Use when user say… |
| 127 | `skills/skills-codex/paper-illustration` | `paper-illustration` | Generate publication-quality AI illustrations for academic papers using Gemini image gener… |
| 128 | `skills/skills-codex/paper-illustration-image2` | `paper-illustration-image2` | Generate publication-quality academic illustrations through a local Codex app-server bridg… |
| 129 | `skills/skills-codex/paper-plan` | `paper-plan` | Generate a structured paper outline from review conclusions and experiment results. Use wh… |
| 130 | `skills/skills-codex/paper-poster` | `paper-poster` | DEPRECATED — superseded by /paper-poster-html. Kept only as a redirect for muscle memory; … |
| 131 | `skills/skills-codex/paper-poster-html` | `paper-poster-html` | DEFAULT poster pipeline — build an academic conference poster (ICML/NeurIPS/ICLR/CVPR/...)… |
| 132 | `skills/skills-codex/paper-slides` | `paper-slides` | Generate conference presentation slides (beamer LaTeX → PDF + editable PPTX) from a compil… |
| 133 | `skills/skills-codex/paper-talk` | `paper-talk` | End-to-end conference talk pipeline: paper → slide outline → Beamer + PPTX → per-page poli… |
| 134 | `skills/skills-codex/paper-write` | `paper-write` | Draft LaTeX paper section by section from an outline. Use when user says \\\"\u5199\u8bba\… |
| 135 | `skills/skills-codex/paper-writing` | `paper-writing` | Workflow 3: Full paper writing pipeline that goes from a narrative report to a polished, s… |
| 136 | `skills/skills-codex/patent-novelty-check` | `patent-novelty-check` | Assess patent novelty and non-obviousness against prior art. Use when user says \"专利查新\", … |
| 137 | `skills/skills-codex/patent-pipeline` | `patent-pipeline` | Full patent drafting pipeline from invention description to jurisdiction-formatted filing … |
| 138 | `skills/skills-codex/patent-review` | `patent-review` | Get an external patent examiner review of a patent application. Use when user says \"专利审查\… |
| 139 | `skills/skills-codex/pixel-art` | `pixel-art` | Generate pixel art SVG illustrations for READMEs, docs, or slides. Use when user says \"\u… |
| 140 | `skills/skills-codex/prior-art-search` | `prior-art-search` | Search patent databases and academic literature for prior art relevant to an invention. Us… |
| 141 | `skills/skills-codex/proof-checker` | `proof-checker` | Rigorous mathematical proof verification and fixing workflow. Reads a LaTeX proof, identif… |
| 142 | `skills/skills-codex/proof-orchestrator` | `proof-orchestrator` | Manage a stateful, run-directory-based proof project with Codex: continuation across runs,… |
| 143 | `skills/skills-codex/proof-writer` | `proof-writer` | Writes rigorous mathematical proofs for ML/AI theory. Use when asked to prove a theorem, l… |
| 144 | `skills/skills-codex/qzcli` | `qzcli` | Manage GPU compute jobs on the Qizhi (启智) platform using qzcli — a kubectl-style CLI tool.… |
| 145 | `skills/skills-codex/rebuttal` | `rebuttal` | Workflow 4: Submission rebuttal pipeline. Parses external reviews, enforces coverage and g… |
| 146 | `skills/skills-codex/render-html` | `render-html` | Render an ARIS Markdown / JSON artifact (IDEA_REPORT, AUTO_REVIEW, KILL_ARGUMENT, PAPER_PL… |
| 147 | `skills/skills-codex/research-implement-feature` | `research-implement-feature` | Build a working artifact from a plain \"implement X for me\" request: a running end-to-end… |
| 148 | `skills/skills-codex/research-lit` | `research-lit` | Search and analyze research papers, find related work, summarize key ideas. Use when user … |
| 149 | `skills/skills-codex/research-pipeline` | `research-pipeline` | Full end-to-end research pipeline: from a broad research direction through idea discovery,… |
| 150 | `skills/skills-codex/research-refine` | `research-refine` | Turn a vague research direction into a problem-anchored, elegant, frontier-aware, implemen… |
| 151 | `skills/skills-codex/research-refine-pipeline` | `research-refine-pipeline` | Run an end-to-end workflow that chains `research-refine` and `experiment-plan`. Use when t… |
| 152 | `skills/skills-codex/research-review` | `research-review` | Get a deep critical review of research from a fresh Codex agent or a selected Gemini, Grok… |
| 153 | `skills/skills-codex/research-wiki` | `research-wiki` | Persistent research knowledge base that accumulates papers, ideas, experiments, claims, an… |
| 154 | `skills/skills-codex/resubmit-pipeline` | `resubmit-pipeline` | Workflow 5: orchestrate a text-only resubmit of a polished paper to a different venue unde… |
| 155 | `skills/skills-codex/result-to-claim` | `result-to-claim` | Use when experiments complete to judge what claims the results support, what they don't, a… |
| 156 | `skills/skills-codex/run-experiment` | `run-experiment` | Deploy and run ML experiments on local or remote GPU servers. Use when user says \"run exp… |
| 157 | `skills/skills-codex/semantic-scholar` | `semantic-scholar` | Search published venue papers (IEEE, ACM, Springer, etc.) via Semantic Scholar API. Comple… |
| 158 | `skills/skills-codex/serverless-modal` | `serverless-modal` | Run GPU workloads on Modal — training, fine-tuning, inference, batch processing. Zero-conf… |
| 159 | `skills/skills-codex/slides-polish` | `slides-polish` | Per-page Codex review + targeted python-pptx / Beamer fixes for academic talk slides. Use … |
| 160 | `skills/skills-codex/specification-writing` | `specification-writing` | Write the full patent specification from claims and invention disclosure. Use when user sa… |
| 161 | `skills/skills-codex/system-profile` | `system-profile` | Profile a target (script, process, GPU, memory, interconnect) for performance analysis. Us… |
| 162 | `skills/skills-codex/training-check` | `training-check` | Interactively monitor training metrics from the current Codex session, periodically checki… |
| 163 | `skills/skills-codex/vast-gpu` | `vast-gpu` | Rent, manage, and destroy GPU instances on vast.ai. Use when user says \"rent gpu\", \"vas… |
| 164 | `skills/skills-codex/web-debug-search` | `web-debug-search` | Search GitHub, Stack Exchange, Chinese technical communities, official documentation, and … |
| 165 | `skills/skills-codex/wiki-enrich` | `wiki-enrich` | Fill in the per-paper TODO sections of research-wiki/papers/<slug>.md pages that literatur… |
| 166 | `skills/skills-codex/writing-systems-papers` | `writing-systems-papers` | Paragraph-level structural blueprint for 10-12 page systems papers targeting OSDI, SOSP, A… |
| 167 | `skills/skills-codex-claude-review/auto-paper-improvement-loop` | `auto-paper-improvement-loop` | Autonomously improve a generated paper via Claude review through claude-review MCP → imple… |
| 168 | `skills/skills-codex-claude-review/auto-review-loop` | `auto-review-loop` | Autonomous multi-round research review loop. Repeatedly reviews using Claude Code via clau… |
| 169 | `skills/skills-codex-claude-review/novelty-check` | `novelty-check` | Verify research idea novelty against recent literature. Use when user says \"查新\", \"novel… |
| 170 | `skills/skills-codex-claude-review/paper-figure` | `paper-figure` | Generate publication-quality figures and tables from experiment results. Use when user say… |
| 171 | `skills/skills-codex-claude-review/paper-plan` | `paper-plan` | Generate a structured paper outline from review conclusions and experiment results. Use wh… |
| 172 | `skills/skills-codex-claude-review/paper-write` | `paper-write` | Draft LaTeX paper section by section from an outline. Use when user says \"写论文\", \"write … |
| 173 | `skills/skills-codex-claude-review/research-refine` | `research-refine` | Turn a vague research direction into a problem-anchored, elegant, frontier-aware, implemen… |
| 174 | `skills/skills-codex-claude-review/research-review` | `research-review` | Get a deep critical review of research from Claude via claude-review MCP. Use when user sa… |
| 175 | `skills/skills-codex-gemini-review/auto-paper-improvement-loop` | `auto-paper-improvement-loop` | Autonomously improve a generated paper via Gemini review through gemini-review MCP → imple… |
| 176 | `skills/skills-codex-gemini-review/auto-review-loop` | `auto-review-loop` | Autonomous multi-round research review loop. Repeatedly reviews using Gemini via gemini-re… |
| 177 | `skills/skills-codex-gemini-review/grant-proposal` | `grant-proposal` | Draft a structured grant proposal from research ideas and literature. Supports KAKENHI (Ja… |
| 178 | `skills/skills-codex-gemini-review/idea-creator` | `idea-creator` | Generate and rank research ideas given a broad direction. Use when user says \"\u627eidea\… |
| 179 | `skills/skills-codex-gemini-review/idea-discovery` | `idea-discovery` | Workflow 1: Full idea discovery pipeline. Orchestrates research-lit \u2192 idea-creator \u… |
| 180 | `skills/skills-codex-gemini-review/idea-discovery-robot` | `idea-discovery-robot` | Workflow 1 adaptation for robotics and embodied AI. Orchestrates robotics-aware literature… |
| 181 | `skills/skills-codex-gemini-review/novelty-check` | `novelty-check` | Verify research idea novelty against recent literature. Use when user says \"查新\", \"novel… |
| 182 | `skills/skills-codex-gemini-review/paper-figure` | `paper-figure` | Generate publication-quality figures and tables from experiment results. Use when user say… |
| 183 | `skills/skills-codex-gemini-review/paper-plan` | `paper-plan` | Generate a structured paper outline from review conclusions and experiment results. Use wh… |
| 184 | `skills/skills-codex-gemini-review/paper-poster-html` | `paper-poster-html` | DEFAULT poster pipeline — build an academic conference poster (ICML/NeurIPS/ICLR/CVPR/...)… |
| 185 | `skills/skills-codex-gemini-review/paper-slides` | `paper-slides` | Generate conference presentation slides (beamer LaTeX → PDF + editable PPTX) from a compil… |
| 186 | `skills/skills-codex-gemini-review/paper-write` | `paper-write` | Draft LaTeX paper section by section from an outline. Use when user says \"写论文\", \"write … |
| 187 | `skills/skills-codex-gemini-review/paper-writing` | `paper-writing` | Workflow 3: Full paper writing pipeline. Orchestrates paper-plan \u2192 paper-figure \u219… |
| 188 | `skills/skills-codex-gemini-review/research-refine` | `research-refine` | Turn a vague research direction into a problem-anchored, elegant, frontier-aware, implemen… |
| 189 | `skills/skills-codex-gemini-review/research-review` | `research-review` | Get a deep critical review of research from Gemini via gemini-review MCP. Use when user sa… |
| 190 | `skills/slides-polish` | `slides-polish` | Per-page Codex review + targeted python-pptx / Beamer fixes for academic talk slides. Use … |
| 191 | `skills/specification-writing` | `specification-writing` | Write the full patent specification from claims and invention disclosure. Use when user sa… |
| 192 | `skills/system-profile` | `system-profile` | Profile a target (script, process, GPU, memory, interconnect) for performance analysis. Us… |
| 193 | `skills/training-check` | `training-check` | Periodically check WandB metrics during training to catch problems early (NaN, loss diverg… |
| 194 | `skills/vast-gpu` | `vast-gpu` | Rent, manage, and destroy GPU instances on vast.ai. Use when user says \"rent gpu\", \"vas… |
| 195 | `skills/web-debug-search` | `web-debug-search` | Search GitHub, Stack Exchange, Chinese technical communities, official documentation, and … |
| 196 | `skills/wiki-enrich` | `wiki-enrich` | Fill in the per-paper TODO sections of research-wiki/papers/<slug>.md pages that literatur… |
| 197 | `skills/writing-systems-papers` | `writing-systems-papers` | Paragraph-level structural blueprint for 10-12 page systems papers targeting OSDI, SOSP, A… |
