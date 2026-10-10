# 共同参数与返回对象

本页描述常见模式，不是全部函数共有的签名。精确默认值、允许类型、透传参数和返回值以候选函数的 Rd 和本机帮助为准。

| 目的 | 常见参数 | 使用约束 |
|---|---|---|
| 列映射 | `x`, `y`, `group_by`, `color_by` | 多数是字符串列名；部分接受多列或特殊值，逐函数核对 |
| 拆图 | `split_by`, `combine`, `nrow`, `ncol` | 通常产生 patchwork 或子图列表 |
| 图内分面 | `facet_by`, `facet_scales` | 固定尺度便于比较，独立尺度应有理由 |
| 分类顺序 | 输入列的 factor levels | 显式设定实验组顺序；不假定字母顺序合理 |
| 缺失与空类别 | `keep_na`, `keep_empty` | 只在支持的函数使用；记录删行或保留策略 |
| 配色 | `palette`, `palcolor`, `palreverse` | 命名映射、按拆图映射等格式须查看函数帮助 |
| 主题 | `theme`, `theme_args` | 通常默认 `theme_this`；四边框可检查 `theme_box` |
| 随机性 | `seed` | 存在抖动、布局或采样时固定种子 |

## 精修与导出

单个 ggplot 可以 `p + ggplot2::labs(...) + ggplot2::theme(...)`。patchwork 的 `+` 与 `&` 作用范围不同：确认是修改最后一图还是全部子图。对子图列表逐个修改后再组合通常更清楚。添加 scale 可能覆盖原有映射，尤其多颜色尺度的火山图，不要盲目追加。

`attr(p, "width")` 和 `attr(p, "height")` 若存在可作尺寸线索，不当成所有对象均有的保证。对 ggplot/patchwork 使用 `ggsave(plot = p, width = ..., height = ..., units = "in", dpi = 300)`；对其他类按文档使用相应绘制方法并显式关闭设备。程序在函数或循环中保存时不要依赖交互式自动打印。

至少检查最终尺寸下的 PNG；PDF/SVG 为矢量输出时仍要检查字体和裁切。图中需包含足够的轴标签和单位，图例与分组一一对应。
