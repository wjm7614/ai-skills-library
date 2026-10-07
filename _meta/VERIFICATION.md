# VERIFICATION · 实测记录

> 原则：**AI 的产出未经执行不算结果。** 本文件记录实际跑过的命令和真实输出，未执行的明确标注。

**测试时间**：2026-10-07
**Python**：3.13.14（隔离虚拟环境 `~/.workbuddy/binaries/python/envs/default`）
**依赖**：`python-docx` 已安装（`pip install python-docx`）

---

## 一、环境探测

| 项 | 结果 |
|---|---|
| Python | ✅ 3.13.14 |
| python-docx | ❌ 初始未安装 → ✅ 已装入隔离 venv |
| git | ❌ **未安装** |
| gh (GitHub CLI) | ❌ **未安装** |
| ffmpeg | ❌ **未安装**（winget 可用，可装） |
| pip | ✅ 26.1.2 |

> 注：git / gh 缺失决定了**无法用 git 推送**，部署必须走 GitHub API。

---

## 二、17 个赛道全量生成测试

命令（对每个赛道）：

```bash
python "<类别>/<赛道>/build.py" --demo --out "_verify/all_<赛道>.docx"
```

**结果：PASS 17 / FAIL 0**

| # | 赛道 | 返回码 | 输出大小 |
|---|---|---|---|
| 1 | 升学保研/graduate-recommendation | 0 | 42,659 B |
| 2 | 奖学金/motivation-scholarship | 0 | 40,436 B |
| 3 | 奖学金/national-scholarship | 0 | 37,876 B |
| 4 | 学科竞赛/challenge-cup | 0 | 55,888 B |
| 5 | 学科竞赛/internet-plus-red-tour | 0 | 52,821 B |
| 6 | 学科竞赛/internet-plus | 0 | 45,980 B |
| 7 | 社会实践/policy-lecture | 0 | 43,718 B |
| 8 | 社会实践/social-survey | 0 | 42,674 B |
| 9 | 社会实践/tech-service | 0 | 44,158 B |
| 10 | 社会实践/volunteer-teaching | 0 | 44,277 B |
| 11 | 科研立项/college-research | 0 | 45,874 B |
| 12 | 科研立项/entrepreneurship-practice | 0 | 46,169 B |
| 13 | 科研立项/entrepreneurship-training | 0 | 69,940 B |
| 14 | 科研立项/innovation-research | 0 | 59,229 B |
| 15 | 科研立项/university-research | 0 | 49,684 B |
| 16 | 评优评先/outstanding-student | 0 | 40,163 B |
| 17 | 评优评先/outstanding-thesis | 0 | 40,562 B |

**结论**：17 个赛道全部真实产出 `.docx`，非空、非报错。

---

## 三、`--school` 参数测试（含一次真实 bug 修复）

### 第一次测试 · 发现失效

```
$ python national-scholarship/build.py --demo --out t1.docx
成功生成国家奖学金申请书: t1.docx
STDERR: [school] 学校模板模块不可用，将忽略 --school：No module named 'school_template'
→ t1.docx = 37,876 B

$ python national-scholarship/build.py --demo --school pku --out t3.docx
成功生成国家奖学金申请书: t3.docx
→ t3.docx = 37,876 B   ← 与 t1 完全相同
```

**判断**：两次输出**字节数完全相同**，说明 `--school` 根本没生效。

### 根因定位

`build.py` 第 55 行（各赛道行号略有差异，逻辑一致）：

```python
_UTILS_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..", "utils")
```

即依赖 `路径(赛道目录)/../../utils`。本库初次搭建时把共享目录放在了 `_shared/utils/`，**多了一层目录**，导致解析到不存在的路径。

> 这是**整理目录时引入的问题，不是上游缺陷**。

### 修复

把共享目录移到符合契约的位置：

```
_shared/utils/      →  02-申报材料/utils/
_shared/references/ →  02-申报材料/references/
```

此时 `02-申报材料/<类别>/<赛道>/../../utils` = `02-申报材料/utils` ✅

**未修改任何上游代码**（17 个 `build.py` 原样保留）。

### 第二次测试 · 确认生效

```
$ python national-scholarship/build.py --demo --out t1.docx
→ 37,876 B（无 --school）

$ python national-scholarship/build.py --demo --school pku --out t3.docx
✅ 已套用学校模板：pku → pku
→ 39,243 B   ← 与 t1 不同
```

**结论**：`--school` 已生效（输出体积不同，且打印了套用成功信息）。

### 未收录学校的降级行为测试

```
$ python national-scholarship/build.py --demo --school 南京工业大学 --out out.docx
成功生成国家奖学金申请书: out.docx
STDERR:
⚠️  未收录学校模板「南京工业大学」，本次按默认版式输出。
   已收录：pku、tsinghua、whu、zju
   新增方式：复制 utils/schools/template_default.json 为 template_<id>.json 后修改，或调用 register_template() 运行时注册。
→ 37,876 B（默认版式）
```

**结论**：**不是静默降级**——明确提示了未收录、列出了已收录清单、给出了新增方法，与 `02-申报材料/README.md` 的承诺一致。

---

## 四、代码安全扫描

对 140 个文件做危险模式匹配，详见 [`SECURITY-AUDIT.md`](SECURITY-AUDIT.md)。

**关键结论**：网络外联 0、动态执行 0、凭证读取 0、持久化 0、编码混淆 0。3 处 `subprocess` / `os.remove` 已人工核对为无害。**无 P0 / P1 风险。**

---

## 五、未执行的部分（明确标注）

| 项 | 状态 | 原因 |
|---|---|---|
| 推送到 GitHub 仓库 | ❌ **未执行** | GitHub 连接器无写权限（`create_repository` 返回 403）。见下方第六节 |
| `--data` 参数（用户真实 JSON）测试 | ❌ 未执行 | 需要你的真实信息，且不应伪造 |
| PDF 导出测试 | ❌ 未执行 | 本机未装 LibreOffice，代码会跳过 |
| `matplotlib` 图表渲染测试 | ❌ 未执行 | 未安装 matplotlib（缺失时 `build.py` 会自动回退为表格模拟并提示，不中断） |
| `dispatcher.py` 路由测试 | ❌ 不可用 | 依赖上游扁平 `subskills/` 布局，本库分类布局不满足 |
| 抖音视频内容抓取 | ❌ **失败** | 页面纯客户端渲染，服务端返回「请尝试在抖音内观看」 |

---

## 六、部署阻塞记录

```
$ create_repository(name="ai-skills-library", private=true)
→ failed: 403 Resource not accessible by integration

$ search_repositories(query="user:wjm7614")
→ Validation Failed: 资源不存在或你没有权限查看
```

**判定**：GitHub 连接为**应用授权模式**，当前仅具备读权限，且未授权访问用户名下仓库。

**解除方式**（二选一）：

- **A**：重新授权连接器，Repository access 选 *All repositories*，`Administration` 与 `Contents` 均设为 **Read and write**
- **B**：提供 Fine-grained PAT（`Administration: R/W` + `Contents: R/W`，范围 All），改用 REST API 推送

---

## 七、复现命令

完整复现本次验证：

```bash
# 1. 建隔离环境
python -m venv <venv>
<venv>/Scripts/python.exe -m pip install -r 02-申报材料/utils/requirements.txt

# 2. 全量生成测试
cd library
for t in 02-申报材料/*/*/build.py; do
  <venv>/Scripts/python.exe "$t" --demo --out "/tmp/$(basename $(dirname $t)).docx"
done

# 3. 单赛道生成
<venv>/Scripts/python.exe 02-申报材料/科研立项/innovation-research/build.py \
  --demo --school pku --out 大创.docx
```
