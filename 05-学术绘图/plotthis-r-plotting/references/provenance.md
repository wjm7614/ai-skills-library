# 来源与许可

技能版本：1.0.1。参考包：CRAN plotthis 0.14.0。生成日期：2026-09-09。

本快照基于用户提供的 `plotthis_0.14.0.tar.gz`，包内 DESCRIPTION 标明 Version: 0.14.0、Repository: CRAN、Date/Publication: 2026-08-29。以该发布包为基准，不默认追随 GitHub 开发版；这不是对在线最新版本的声明。上游作者 Panwen Wang；项目地址 https://github.com/pwwang/plotthis ，文档地址 https://pwwang.github.io/plotthis/ 。在线文档可能随开发版本变化，发生冲突时优先核对实际安装包的帮助及此 CRAN 快照。

迁移核对：此前 0.14.1-1 源码与此发布包的 NAMESPACE 一致；已收录的 40 份 Rd 文档和 37 个 R 源文件在统一换行后内容一致。因此现有 API 说明和示例无需因版本切换改写，版本标记、来源和校验清单已重新生成。这个结论只适用于本次比较的两个本地源码包。

`api/*.Rd` 是上游 man 目录中覆盖导出名称的原始文档，保留源格式、注释与示例；别名共享同一文件。索引从 NAMESPACE 的 export 项与 Rd alias 生成，包含绘图函数和辅助函数。`snapshot-md5.txt` 记录版本及输入文件摘要用于识别快照变化，不是安全签名。此包不复制上游数据集，也不保证上游所有示例在缺少可选包时可直接执行。

上游采用 GPL (>= 3)，许可证原文见 [LICENSE.md](../LICENSE.md)。本技能随同衍生参考资料按 GPL-3.0-or-later 提供。技能自有说明、生成器及检查脚本与上游文档分开维护。

升级时从新源码运行 `scripts/build_catalog.R`，审查导出变化、参数差异和旧快照遗留文件，更新 SKILL.md、检查脚本中的参考版本与本页，重跑示例。不要只改版本号。日常使用优先核对已安装版本，不因本快照较新而自动升级用户环境。
