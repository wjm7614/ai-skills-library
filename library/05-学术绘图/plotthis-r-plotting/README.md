# Plotthis R 绘图

帮助 Agent 使用 R 创建或修改统计、科研与生信图形：先匹配 plotthis 的高层 API，再根据需要使用 ggplot2 精修或其他绘图库。用户明确指定绘图库时遵从该选择。

执行指令见 [SKILL.md](SKILL.md)，参考包版本与来源见 [来源记录](references/provenance.md)。参考快照不代表本地已安装版本或在线最新版本。

## 适用任务

- 根据数据结构选择散点图、柱状图、热图、火山图等图型。
- 核对函数参数，完成分组、分面、拆图、配色和标签调整。
- 导出图像并保留可复现的 R 脚本。

本 Skill 面向 R 绘图，不用于网页交互图或非 R 可视化。可检索的图型与辅助函数见 [图型索引](references/plot-catalog.md)。

## 安装与环境

将整个 `plotthis-r-plotting/` 文件夹复制到所用 Agent 工具支持的 Skill 目录，保留脚本及参考资料。`agents/openai.yaml` 提供工具适配元数据；其他工具的发现与调用方式以其说明为准。

运行绘图需要 R，以及可以成功加载的 plotthis 和相关依赖。ggplot2 用于精修和导出；已有冒烟测试还会调用 patchwork。部分图型需要额外依赖，应按实际调用核对。Skill 文件本身不会安装或升级这些包。

在本 Skill 文件夹内执行以下命令，检查本地版本和候选函数参数：

```sh
Rscript --vanilla scripts/check_plotthis.R ScatterPlot VolcanoPlot
```

该检查只读取环境，不安装包。返回码 `0` 表示指定导出存在，`2` 表示 plotthis 不可用，`3` 表示有指定名称未导出；版本不一致会提示，但不会单独产生失败返回码。检查成功不代表实际绘图已验证。

## 使用示例

调用时提供数据位置、列名、图形目的、分组方式与输出要求。例如：

> 使用 plotthis-r-plotting。我的数据包含 time、value 和 group 三列，请绘制按 group 着色的散点图，导出 300 dpi PNG、PDF 和完整 R 脚本。先核对列类型及缺失值。

> 使用 plotthis-r-plotting 绘制火山图。gene 是基因名，log2FC 是效应量，padj 是未取对数的调整后 p 值。阈值为 abs(log2FC) > 1、padj < 0.05，在全图显著基因中按 padj 从小到大标注至多 10 个。

原生绘图与 ggplot2 精修代码见 [可运行示例](references/examples.md)。任务应交付请求的图像和可复现脚本；实际运行时记录所用版本，导出后查看图像，核对标签、图例、裁切和数据表达。

## 验证与限制

从本 Skill 文件夹运行已有合成数据测试：

```sh
Rscript --vanilla scripts/smoke_test.R ../_local/plotthis-smoke
```

测试会创建散点、拆图、柱状和火山图的 PNG/PDF，以及 `session-info.txt`，检查返回对象与导出文件。重复使用同一输出目录会覆盖同名测试产物；需要保留历史时使用新目录。仓库根目录 `_local/` 已被 Git 忽略。

这项测试只覆盖上述路径，不代表全部 API 或所有 Agent 平台均已验证。程序检查后仍需人工或 Agent 查看图像。本 README 的添加未重新执行 R 绘图测试。

函数参数并非通用：例如 `group_by`、`color_by` 与 `fill_by` 不能直接互换，不同函数也可能返回不同对象类型。版本不符时，先核对已安装包的帮助与参数，再使用快照示例。无法运行时应交付代码并明确未执行。

## 维护与许可

`scripts/build_catalog.R` 用于从指定上游源码重建参考索引与快照，普通绘图任务无需运行。升级步骤及来源约束见 [来源记录](references/provenance.md)。

本 Skill 按 GPL-3.0-or-later 提供，许可证正文见 [LICENSE.md](LICENSE.md)。
