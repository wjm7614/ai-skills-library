# 复杂输入与回退

通过图型索引打开精确 Rd 后再构造调用。

| 图型 | 调用前核对 |
|---|---|
| Network、EnrichNetwork | 边表与节点表键、起终点列、孤立点、重复边、有向性；Network 首参是 `links` |
| SankeyPlot、AlluvialPlot、ChordPlot、CircosPlot | 数据是阶段流、连接权重还是分段位置；不要仅因外观相似互换 |
| VennDiagram、UpsetPlot | 集合列表还是成员关系表；去重、交集语义、大小写及缺失标识 |
| ROCCurve | 真实二分类结局、阳性类别、预测分数方向；多组是否对应同一观测 |
| RadarPlot、SpiderPlot | 指标量纲、是否需要归一化、轴方向、跨组共同范围 |
| SpatPointsPlot、SpatShapesPlot、SpatMasksPlot、SpatImagePlot | 坐标参考系、图像原点、比例、几何类与空间单位 |
| ClustreePlot | 不同分辨率的聚类成员关系，不能用聚类摘要表替代 |

所需扩展包按该函数实际需求处理，不一次安装所有 Suggests。专用返回类先检查帮助中的 value 和 examples，再选择绘制/保存方法。

回退例子：用户要求特殊四象限背景、两种独立回归模型和置信区间，而当前 ScatterPlot 组合无法清晰保留这些语义时，可直接用 ggplot2。不要为满足“优先”而制造一次无用的 plotthis 调用。
