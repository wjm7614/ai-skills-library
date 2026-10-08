# 可运行示例

完整合成数据示例在 [smoke_test.R](../scripts/smoke_test.R)，只依赖实际绘图所需的包，不下载数据。

```sh
Rscript --vanilla <skill>/scripts/check_plotthis.R ScatterPlot VolcanoPlot
Rscript --vanilla <skill>/scripts/smoke_test.R <output-directory>
```

第二条会在指定目录生成四组 PNG/PDF 和环境记录，不使用用户数据。用于开发时验证源码版本可额外传入 plotthis 源码目录，需要 pkgload，但不修改已安装包。

## 原生 + 精修

```r
d <- data.frame(time = 1:4, value = c(2, 4, 3, 5))
p <- plotthis::ScatterPlot(d, x = "time", y = "value")
stopifnot(inherits(p, "ggplot"))
p <- p + ggplot2::labs(x = "Time (h)", y = "Value")
ggplot2::ggsave("scatter.png", plot = p, width = 6, height = 4,
                units = "in", dpi = 300)
```

## 全图按 padj 标注 Top 10

下面假定数据 `d` 含 `gene`, `log2FC`, `padj`，padj 未取对数；阈值仅为示例，真实任务用用户指定值。先验证数值合法再排序。显式行索引适用于参考版本的 `labels`，不同安装版本应先核对帮助。

```r
stopifnot(is.numeric(d$padj), all(is.finite(d$padj)),
          all(d$padj > 0 & d$padj <= 1),
          is.numeric(d$log2FC), all(is.finite(d$log2FC)))
eligible <- which(abs(d$log2FC) > 1 & d$padj < 0.05)
top <- head(eligible[order(d$padj[eligible], d$gene[eligible])], 10)
p <- plotthis::VolcanoPlot(d, x = "log2FC", y = "padj",
  x_cutoff = 1, y_cutoff = 0.05, label_by = "gene", labels = top,
  ylab = "-log10(adjusted p)", y_cutoff_name = "adjusted p = 0.05")
```

这里选择全图显著点中 padj 最小的至多十个，以 gene 打破并列；若用户要求每组十个则分别排名。零个候选时需要核对当前版本空 `labels` 的处理，必要时显式设置 `nlabel = 0`。
