# SECURITY-AUDIT · 第三方代码审计报告

**审计对象**：`02-申报材料/` 及其依赖 `02-申报材料/utils/`、`02-申报材料/references/`（来自 [cuic19053-hue/awesome-student-ai-skills](https://github.com/cuic19053-hue/awesome-student-ai-skills)，共 140 个文件）
**审计时间**：2026-10-07
**审计方式**：静态模式扫描 + 可疑点人工核对
**结论**：**通过。未发现 P0 / P1 风险。**

---

## 一、扫描覆盖

对全部 140 个文件做了危险模式匹配：

| 风险类别 | 检测模式 | 命中 |
|---|---|---|
| 命令执行 | `os.system(` | **0** |
| 进程调用 | `subprocess.` | 10（全部人工核对，见下） |
| 动态执行 | `eval(` / `exec(` / `compile(` | **0** |
| 动态导入 | `__import__(` | **0** |
| 编码混淆 | `b64decode` / `base64.b64decode` | **0** |
| 网络外联 | `requests.get/post` | **0** |
| 网络外联 | `urllib.request` / `urlopen` | **0** |
| 网络外联 | `socket.socket` | **0** |
| 批量删除 | `shutil.rmtree` | **0** |
| 文件删除 | `os.remove` / `os.unlink` | 1（人工核对，见下） |
| 反序列化 | `pickle.loads` | **0** |
| 反序列化 | `marshal.loads` | **0** |
| 权限提升 | `os.chmod` / `chmod 0o7xx` | **0** |
| 凭证窃取 | 读取 `GITHUB_*` / `GH_*` / `AWS_*` / `OPENAI_*` / `ANTHROPIC_*` / `API*` 环境变量 | **0** |
| 持久化 | `.pth` / `sitecustomize` / `usercustomize` | **0** |
| 持久化 | `AppData` / `Startup` / 注册表 `HKCU` / `HKLM` / `schtasks` / `reg add` | **0** |
| 外部下载 | `curl` / `wget` 调用 | **0** |

**关键结论**：无网络外联、无动态执行、无凭证读取、无持久化、无编码混淆。**这是最重要的四条**——恶意 skill 几乎必然踩到其中之一，此处全部为 0。

---

## 二、可疑点人工核对

### 1. `utils/pdf_export.py:199` — `subprocess.run` ✅ 无害

```python
cmd = [
    _LIBREOFFICE_BIN,
    f"-env:UserInstallation=file://{profile_dir}",
    "--headless", "--norestore", "--nolockcheck",
    "--convert-to", "pdf",
    "--outdir", str(output_dir),
    str(docx_path),
]
proc = subprocess.run(cmd, stdout=PIPE, stderr=PIPE, timeout=timeout, check=False)
```

**判定**：调用 **LibreOffice** 做 docx→pdf 格式转换，参数为固定白名单（`_LIBREOFFICE_BIN` 常量），**无 shell=True，无用户可控的命令拼接**，且有超时控制和异常捕获，失败返回 `None` 而不中断。属正常功能实现。

### 2. `utils/example_usage.py:278` — `os.remove` ✅ 无害

```python
out1 = "/tmp/docx_common_demo.docx"
out2 = "/tmp/docx_common_grade_report.docx"
for p in (out1, out2):
    if os.path.exists(p):
        os.remove(p)
```

**判定**：删除**自己**即将生成的 `/tmp` 演示文件，路径硬编码，非用户输入，非递归。属正常清理逻辑。

### 3. `tests/*.py` — `subprocess.run`（共 8 处）✅ 无害

```python
proc = subprocess.run(
    [sys.executable, str(ROOT / "subskills" / skill / "build.py"), "--demo", "--out", str(out)],
    capture_output=True, text=True, cwd=str(ROOT),
)
```

**判定**：测试用例用**当前 Python 解释器**运行本项目自己的 `build.py`，参数硬编码，输出到 `tmp_path`（pytest 临时目录）。属正常单元测试。

---

## 三、附带发现（非安全，但值得知道）

### 1. 上游 README 存在模板注入残留

上游 `README.md` 的「Windows 终端与编码约定说明」一节中，出现了作者本机路径被错误替换进文档的痕迹：

```
（或 PowerShell 中 `/Users/mac/.gemini/antigravity/scratch/awesome-student-ai-skillsYTHONUTF8=1`）
```

`mac` 用户名、`antigravity/scratch` 路径、以及被吞掉前缀的 `PYTHONUTF8` 说明这一段是**自动生成时变量替换出错**的产物。

**影响**：仅影响文档可读性，**无安全影响**。
**处置**：本库 `02-申报材料/README.md` 中已重写该说明，未沿用上游文本。

### 2. 上游 `index.json` 存在元数据不一致

`version.json` 声明 `v2.0`，而 `index.json` 中多数条目的 `version` 字段仍为 `v1.0`，`last_updated` 混用 `2025-05-20` 与 `2026-09-05`。

**影响**：仅元数据展示层面，不影响运行。

### 3. 无 `requirements.txt` 锁版本

`_shared/utils/requirements.txt` 未固定版本号。

**建议**：如需可复现环境，自己冻结一次版本。

---

## 四、使用建议

1. **首次运行前**先 `pip install -r _shared/utils/requirements.txt`，并在**隔离虚拟环境**中执行
2. `build.py` 只做 docx 生成，**不联网、不读凭证**，可放心运行
3. 若不需要 PDF 输出，可不装 LibreOffice；代码会自动跳过而非报错
4. 生成的 `.docx` 是**你自己的数据**渲染结果，注意不要提交含个人隐私信息的 JSON 到公开仓库

---

## 五、审计边界（未做的事）

诚实说明本次审计**没有覆盖**的部分：

- ❌ 未做**动态执行**（未实际在沙箱中运行全部 35 个 `build.py`）
- ❌ 未做依赖项**供应链审计**（未核查 `requirements.txt` 各包的漏洞）
- ❌ 未逐行通读 2.4MB 的 `SKILL.md` 文本内容（仅扫描了可执行代码）
- ❌ 未审计上游 git 历史中的历史版本

> 基于静态扫描的结论是：**这个包的行为是"本地生成 docx 文件"，没有对外通信能力**。这是判断可以安全使用的核心依据。

---

## 六、科研入门部分

`01-科研入门/` 全部为 Markdown 文本，**不含任何可执行代码**，无审计必要。

`03-VibeCoding实战/` 全部为 Markdown 文本 + 21 张 JPG 图片，**不含任何可执行代码**，无审计必要。
