# 11 · 如何写论文 · Reference

## 第一原则：手动编辑，不要直接粘贴

> **参考文献绝对不是从 Google Scholar、DBLP 复制下来 bib 贴进去就行了，而是每一个都要自己手动编辑！！！确保格式正确、统一！**

## 大小写保护

直接复制下来的 bib **会把原本应该大写的自动变成小写**，需要使用 `{}` 保护。

### 示例

```bibtex
% ❌ 错误：title 里的专有名词会被小写化
title = {SymSkill: Symbol and Skill Co-Invention for Data-Efficient Robot Learning}

% ✅ 正确：用 {} 保护需要保持大写的部分
title = {{SymSkill}: Symbol and Skill Co-Invention for Data-Efficient Robot Learning}
```

### 需要大写保护的内容

- **论文标题中的专有名词、方法名**
- **常见缩写**：`LLM`、`GPT`、`CNN`、`RNN`、`Transformer`、`BERT`
- **模型 / 数据集名称**：`ImageNet`、`COCO`、`GLUE`
- **机构 / 产品名**：`OpenAI`、`GitHub`

## 格式统一检查清单

- [ ] 所有条目的**字段风格一致**（会议全称 vs 缩写，只能选一种）
- [ ] **作者名格式统一**（`Last, First` 还是 `First Last`）
- [ ] **年份、页码、卷号**格式一致
- [ ] **会议 / 期刊名称**写法统一（`NeurIPS` 不要一会儿写 `NIPS`）
- [ ] **DOI / URL** 有无缺失
- [ ] 每条都在正文中**被引用过**（没有孤立条目）
- [ ] 正文引用的每一条**都在 bib 里**（没有悬空引用）

## 工具建议

- **Zotero** —— 管理文献库，配合 Better BibTeX 插件可导出稳定 citekey
- **DBLP** —— 计算机领域 bib 相对准确（会议论文比 Google Scholar 规范）
- 拿到 bib 后**仍然要人工过一遍**：DBLP 也可能有错

## 常见的引用错误

| 错误 | 说明 |
|---|---|
| 引用二手来源 | 应引用原始论文，不要引"某综述里提到" |
| 引用 arXiv 版而非正式版 | 如果已正式发表，应引会议/期刊版本 |
| 引用自己不相关的旧工作硬凑 | 审稿人能看出来，反而减分 |
| 遗漏最相关的对比工作 | 会被认为"没做功课"，且 novelty 受质疑 |

> 最后一条特别致命：如果有高度相关的工作你没引，审稿人（往往就是那篇的作者）会直接指出。

## 下一步

→ `12-论文画图指南.md`
