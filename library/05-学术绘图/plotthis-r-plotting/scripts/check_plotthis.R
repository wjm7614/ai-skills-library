#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)
cat("R:", R.version.string, "\nReference snapshot: plotthis 0.14.0\n")
if (!requireNamespace("plotthis", quietly = TRUE)) {
  cat("plotthis unavailable: not installed or namespace dependencies failed.\n")
  quit(status = 2L)
}
version <- as.character(utils::packageVersion("plotthis"))
cat("Installed plotthis:", version, "\n")
if (version != "0.14.0") cat("VERSION MISMATCH: use installed help and signatures before snapshot examples.\n")
exports <- sort(getNamespaceExports("plotthis"))
if (!length(args)) cat("Exports:\n", paste(exports, collapse = "\n"), "\n", sep = "")
missing <- character()
for (name in args) {
  cat("\n---", name, "---\n")
  if (!name %in% exports) {
    cat("NOT EXPORTED\n")
    missing <- c(missing, name)
  } else {
    obj <- getExportedValue("plotthis", name)
    if (is.function(obj)) print(formals(obj)) else cat("Class:", class(obj), "\n")
  }
}
quit(status = if (length(missing)) 3L else 0L)
