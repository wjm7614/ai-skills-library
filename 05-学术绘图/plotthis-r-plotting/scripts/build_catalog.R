#!/usr/bin/env Rscript
# Rebuild only in a new skill folder, or after reviewing the existing snapshot.
args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 2L) stop("Usage: Rscript build_catalog.R <plotthis-source> <skill-folder>")
src <- normalizePath(args[1], mustWork = TRUE)
dst <- normalizePath(args[2], mustWork = TRUE)
desc <- read.dcf(file.path(src, "DESCRIPTION"))
stopifnot(desc[1, "Package"] == "plotthis")
ns <- readLines(file.path(src, "NAMESPACE"), warn = FALSE)
exports <- sub("^export\\((.*)\\)$", "\\1", grep("^export\\(", ns, value = TRUE))
api <- file.path(dst, "references", "api")
dir.create(api, recursive = TRUE, showWarnings = FALSE)
rows <- character(); seen <- character(); copied <- character()
for (f in sort(list.files(file.path(src, "man"), "\\.Rd$", full.names = TRUE))) {
  rd <- tools::parse_Rd(f, encoding = "UTF-8")
  tags <- vapply(rd, function(x) { z <- attr(x, "Rd_tag"); if (is.null(z)) "" else z }, "")
  aliases <- vapply(rd[tags == "\\alias"], function(x) paste(unlist(x), collapse = ""), "")
  public <- intersect(aliases, exports)
  if (!length(public)) next
  title <- paste(unlist(rd[tags == "\\title"]), collapse = "")
  title <- gsub("[\r\n|]", " ", title)
  stopifnot(file.copy(f, file.path(api, basename(f)), overwrite = TRUE))
  copied <- c(copied, file.path(api, basename(f)))
  for (name in public) rows <- c(rows, sprintf("| `%s` | %s | [API](api/%s) |", name, title, basename(f)))
  seen <- c(seen, public)
}
if (length(setdiff(exports, seen))) stop("Undocumented exports: ", paste(setdiff(exports, seen), collapse = ", "))
header <- c("# Plotthis \u56fe\u578b\u7d22\u5f15", "", paste("\u53c2\u8003\u7248\u672c\uff1a", desc[1, "Version"], "\u3002\u7531 NAMESPACE \u4e0e Rd alias \u81ea\u52a8\u751f\u6210\u3002"),
  "", "\u5148\u6309\u4e0b\u9762\u7684\u610f\u56fe\u6620\u5c04\u9009\u62e9\u5019\u9009\uff0c\u518d\u6253\u5f00\u8be5\u51fd\u6570\u7684 API\uff1bRd \u4e2d usage \u662f\u7b7e\u540d\u3001arguments \u662f\u53c2\u6570\u5951\u7ea6\u3001value \u662f\u8fd4\u56de\u503c\u3001examples \u662f\u4e0a\u6e38\u793a\u4f8b\u3002\u53ea\u8bfb\u76f8\u5173\u6587\u4ef6\uff0c\u4e0d\u6279\u91cf\u52a0\u8f7d\u3002", "",
  "| \u7528\u6237\u610f\u56fe | \u5019\u9009\u51fd\u6570 |", "|---|---|",
  "| \u67f1\u72b6\u3001\u5206\u7ec4\u67f1\u72b6\u3001\u62c6\u5206\u67f1\u72b6\u3001\u7011\u5e03 | BarPlot / SplitBarPlot / WaterfallPlot |",
  "| \u6563\u70b9\u3001\u6298\u7ebf\u3001\u8d8b\u52bf\u3001\u9762\u79ef\u3001\u68d2\u68d2\u7cd6 | ScatterPlot / LinePlot / TrendPlot / AreaPlot / LollipopPlot |",
  "| \u7bb1\u7ebf\u3001\u5c0f\u63d0\u7434\u3001\u8702\u7fa4\u3001\u6296\u52a8 | BoxPlot / ViolinPlot / BeeswarmPlot / JitterPlot |",
  "| \u5206\u5e03\u3001\u76f4\u65b9\u3001\u5c71\u810a | DensityPlot / Histogram / RidgePlot |",
  "| \u70ed\u56fe\u3001\u8054\u5408\u70ed\u56fe\u3001\u76f8\u5173\u77e9\u9635\u3001\u6210\u5bf9\u76f8\u5173 | Heatmap / LinkedHeatmap / CorPlot / CorPairsPlot |",
  "| \u706b\u5c71\u3001\u66fc\u54c8\u987f\u3001\u5bcc\u96c6 | VolcanoPlot / ManhattanPlot / GSEAPlot / GSEASummaryPlot / EnrichMap / EnrichNetwork |",
  "| \u964d\u7ef4\u5750\u6807\u3001\u7279\u5f81\u3001\u901f\u5ea6\u3001\u805a\u7c7b\u6811\u3001\u70b9\u9635 | DimPlot / FeatureDimPlot / VelocityPlot / ClustreePlot / DotPlot |",
  "| \u6d41\u5411\u3001\u6851\u57fa\u3001\u5f26\u56fe\u3001\u73af\u5f62\u5173\u7cfb\u3001\u7f51\u7edc | AlluvialPlot / SankeyPlot / ChordPlot / CircosPlot / Network |",
  "| \u96c6\u5408\u4e0e\u4ea4\u96c6 | VennDiagram / UpsetPlot |",
  "| \u96f7\u8fbe\u3001ROC\u3001QQ\u3001\u7a00\u91ca\u66f2\u7ebf | RadarPlot / SpiderPlot / ROCCurve / QQPlot / RarefactionPlot |",
  "| \u997c\u3001\u73af\u3001\u8bcd\u4e91 | PieChart / RingPlot / WordCloudPlot |",
  "| \u7a7a\u95f4\u70b9\u3001\u5f62\u72b6\u3001\u63a9\u819c\u3001\u5e95\u56fe | SpatPointsPlot / SpatShapesPlot / SpatMasksPlot / SpatImagePlot |",
  "| \u4e3b\u9898\u3001\u56db\u8fb9\u6846\u3001\u8c03\u8272\u677f | theme_this / theme_blank / theme_box / palette_this / show_palettes |", "",
  "## \u5168\u90e8\u5bfc\u51fa\u540d\u79f0\uff08\u5305\u62ec\u5171\u4eab\u6587\u6863\u7684\u522b\u540d\u548c\u8f85\u52a9\u51fd\u6570\uff09", "", "| \u5bfc\u51fa\u540d | \u4e0a\u6e38\u6807\u9898 | \u53c2\u6570\u4e0e\u793a\u4f8b |", "|---|---|---|")
writeLines(enc2utf8(c(header, sort(rows))), file.path(dst, "references", "plot-catalog.md"), useBytes = TRUE)
hash <- tools::md5sum(c(file.path(src, c("DESCRIPTION", "NAMESPACE")), copied))
writeLines(c(paste("plotthis", desc[1, "Version"]), paste(unname(hash), basename(names(hash)))), file.path(dst, "references", "snapshot-md5.txt"))
cat(length(exports), "exports mapped to", length(copied), "Rd files\n")
