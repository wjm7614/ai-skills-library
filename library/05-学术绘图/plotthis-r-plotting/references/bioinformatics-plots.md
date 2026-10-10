# 生信图形的语义检查

在索引中定位下列函数的精确 API；此页只补充需要先决定的数据语义。

## VolcanoPlot

0.14.0 的 `ytrans` 默认 `"-log10"`；`y_cutoff` 使用变换前的尺度，并一起变换。原始 p/padj 应在 [0, 1]；零值需要明确处理策略并披露，不能无说明替换。已经是负对数的列需按实际版本设置恒等变换，并使用同一输入尺度的阈值。

`x` 是否 log2 fold change 必须确认。显式指定用户要求的 `x_cutoff`，不依赖自动推断。使用 padj 时图注不要写成原始 p 值。

该参考版本 `nlabel` 是按 x 正负分组及分面内到原点的欧氏距离选择显著点，不是全图按 padj 排名前 N。用户要求“padj 最小的十个”时自己排序，然后通过 `labels` 指定行名或行索引，`label_by` 指定展示名称。不要把基因名向量直接当成行名，除非已明确建立这种对应关系。

## Heatmap / LinkedHeatmap / CorPlot / CorPairsPlot

表达量热图、行标准化热图和相关矩阵不是同一数据。记录转置、变换、缩放、聚类距离和缺失值策略；检查常数行、非数值列以及样本注释对齐。Heatmap 有自己的 `in_form`, `rows_by`, `columns_by`, `values_by` 契约，不能套 `x/y`。

## GSEAPlot / GSEASummaryPlot / EnrichMap / EnrichNetwork

先确认输入是排序统计量、运行富集曲线还是通路汇总结果，再读 API；不假定可直接接受任意富集包的 S4 对象。NES、p 值、校正 p 值、基因集合与背景定义应保留原含义。缺少绘图所需统计量时不要从汇总 p 值虚构富集曲线。

## DimPlot / FeatureDimPlot / VelocityPlot

核对坐标、行标识、分组或特征列是否逐行对齐。DimPlot 展示已有降维坐标，不等于执行 PCA/UMAP/tSNE。需要计算坐标时单独执行并记录方法和种子。VelocityPlot 的向量须有数据依据，不能从静态表达矩阵凭空产生。

## ManhattanPlot

检查染色体编码、位置单位及 p 值尺度。全基因组阈值必须来自分析设定，不因示例默认值而改变。
