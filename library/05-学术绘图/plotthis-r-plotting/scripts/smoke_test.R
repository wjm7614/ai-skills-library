#!/usr/bin/env Rscript
# Synthetic data only. Optional source path loads that version without installing it.
args <- commandArgs(trailingOnly = TRUE)
if (!length(args) || length(args) > 2L) stop("Usage: Rscript smoke_test.R <output-dir> [plotthis-source]")
dir.create(args[1], recursive = TRUE, showWarnings = FALSE)
out <- normalizePath(args[1], mustWork = TRUE)
if (length(args) == 2L) {
  if (!requireNamespace("pkgload", quietly = TRUE)) stop("Source testing requires pkgload")
  pkgload::load_all(args[2], quiet = TRUE, export_all = FALSE)
}
stopifnot(requireNamespace("plotthis", quietly = TRUE))
set.seed(8525)
d <- data.frame(x = seq_len(40), y = rnorm(40), group = rep(c("A", "B"), each = 20))
p <- plotthis::ScatterPlot(d, x = "x", y = "y")
p <- p + ggplot2::labs(x = "Observation", y = "Synthetic value", title = "Scatter: ggplot2 extension")
parts <- plotthis::ScatterPlot(d, x = "x", y = "y", split_by = "group", combine = FALSE)
stopifnot(is.list(parts), length(parts) == 2L)
bar <- plotthis::BarPlot(data.frame(group = c("A", "B"), value = c(3, 5)), x = "group", y = "value")
v <- data.frame(gene = paste0("gene", 1:40), log2FC = seq(-3, 3, length.out = 40), padj = seq(0.001, 0.04, length.out = 40))
eligible <- which(abs(v$log2FC) > 1 & v$padj < 0.05)
top <- head(eligible[order(v$padj[eligible], v$gene[eligible])], 10)
volcano <- plotthis::VolcanoPlot(v, x = "log2FC", y = "padj", x_cutoff = 1, y_cutoff = 0.05, label_by = "gene", labels = top, ylab = "-log10(adjusted p)", y_cutoff_name = "adjusted p = 0.05")
plots <- list(scatter = p, split = patchwork::wrap_plots(parts), bar = bar, volcano = volcano)
for (name in names(plots)) {
  obj <- plots[[name]]
  stopifnot(inherits(obj, "ggplot"))
  for (ext in c("png", "pdf")) {
    path <- file.path(out, paste0(name, ".", ext))
    ggplot2::ggsave(path, plot = obj, width = 8, height = 5, units = "in", dpi = 150)
    stopifnot(file.info(path)$size > 1000)
  }
}
writeLines(c(paste("plotthis", utils::packageVersion("plotthis")), capture.output(sessionInfo())), file.path(out, "session-info.txt"))
cat("PASS: native bar, hybrid scatter, two split panels, explicit volcano labels; PNG and PDF export\n")
