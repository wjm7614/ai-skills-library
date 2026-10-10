---
name: plotthis-r-plotting
description: 使用 R 创建或修改统计、科研和生信图形时，优先选择匹配需求的 plotthis 高层 API，必要时结合 ggplot2 精修或回退至其他绘图包。适用于 R 绘图任务，不适用于网页交互图或非 R 可视化；尊重用户明确指定的绘图库。
license: GPL-3.0-or-later
metadata:
  version: "1.0.1"
  plotthis-reference-version: "0.14.0"
---

# Plotthis R 绘图

让图形语义决定实现：plotthis 原生函数满足需求时优先使用；可用返回对象完成精修时组合 ggplot2；不支持、数据契约不匹配或组合明显更复杂时，用 ggplot2、base R 或专用包。用户明确指定其他库时遵从该选择。

## 执行流程

1. 识别图形语义、输入结构和用户指定的统计处理。先读 [图型索引](references/plot-catalog.md)，再仅打开候选函数对应的 API 文件。索引覆盖源码导出名称与 alias，不表示所有函数都接受相同参数。
2. 每个新的 R 环境先运行 `Rscript --vanilla <skill>/scripts/check_plotthis.R [FunctionName ...]`。以 CRAN 0.14.0 为参考基准，不默认追随 GitHub 开发版；实际安装版本和 `formals()` 优先。版本不一致、出现未知参数或找不到函数时读当地 `help()`；不要猜测、静默吞掉参数或用内部 `:::` 函数绕过问题。
3. 在调用前检查列名、数据类型、缺失值、重复观测、单位和长宽表格式。字符串列名如 `x = "gene"`，不能照搬 `aes(x = gene)`。矩阵、网络、空间等专用接口须遵循各自文档，不能一律传 `data, x, y`。
4. 按 [共同参数与返回对象](references/common-arguments.md) 选择分组、分面、拆图、颜色和主题。按需读 [生信语义](references/bioinformatics-plots.md) 或 [复杂输入](references/specialized-plots.md)。先运行最小正确调用，再精修；不改变用户数据的统计含义来迎合函数。
5. 检查 `class(p)` 后再添加图层或导出。不要假定所有函数返回单个 ggplot。显式指定画布大小、格式和分辨率，保存可复现 R 脚本；执行导出后打开预览检查标签、图例、裁切、分面顺序和数据是否正确展示。

## 易错点

- `group_by`、`color_by`、`fill_by` 并非通用同义词；只有当前函数有对应参数才传入。`...` 不等于任意参数都有效。
- `split_by` 是拆成多个图，`facet_by` 是图内分面；`combine = FALSE` 常用于取得各子图列表，但以当前函数文档及返回值为准。
- 不对 p 值重复取负对数，不把已经标准化的数据再次标准化，不把预计算坐标当成原始矩阵重新降维。
- Top N 的排名规则必须和用户要求一致；函数默认标注数量不一定是全图总数，也不一定按 p 值排名。
- 缺包时准确报告所缺依赖，按任务环境的依赖管理方式处理；不自动升级用户已有 plotthis。无法运行时交付代码并明确未执行，不能声称图已验证。
- 需要回退时简短说明具体原因，如当前版本不支持所需参数；无需把内部查表过程展示给用户。

## 可复用资源

- [运行示例](references/examples.md)：原生绘图、ggplot2 精修、拆图、火山图显式排名与导出。
- `scripts/check_plotthis.R`：只读检查版本、导出函数与指定函数参数，不安装包。
- `scripts/smoke_test.R`：用合成数据验证核心绘图及 PNG/PDF 导出；仅在验证本技能或环境时运行。
- `scripts/build_catalog.R`：维护者从指定 plotthis 源码的 NAMESPACE 和 Rd 重建索引、API 快照及校验清单；升级参考版本时使用，普通绘图无需运行。
- [来源与许可](references/provenance.md)：快照来源、版本及更新约束。
