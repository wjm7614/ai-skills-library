# GitHub 接入方式：给 DeepSeek Harness 用

仓库地址：**https://github.com/wjm7614/ai-skills-library**

```
ai-skills-library/
├── library/          ← 给人看的中文分类库（199 文件，含 CATALOG.md）
├── dsh-skills/       ← 给 DSH 吃的扁平技能层（337 技能 / 4975 文件）
│   ├── INDEX.md      ← 全部技能一览表
│   └── <kebab-name>/SKILL.md
├── DSH-USAGE.md      ← 扫描规则 / frontmatter 规范 / 常见坑
└── (根目录 01-科研入门 … 05-学术绘图 为上一轮遗留，与 library/ 内完全重复)
```

---

## 方案 A：直接用 GitHub 上的远端目录（推荐）

DSH 只能读**本地文件系统**，所以要先把仓库拉到本机。

### 1. 克隆（只需一次）

```bash
git clone https://github.com/wjm7614/ai-skills-library.git
# 私有仓库需带 token：
# git clone https://<TOKEN>@github.com/wjm7614/ai-skills-library.git
```

放到一个固定位置，例如：

```
D:\skills\ai-skills-library
```

### 2. 让 DSH 扫到 dsh-skills

**方式一：环境变量指向仓库子目录（最省事）**

把 `dsh-skills` 挂进 DSH 的 `customSkillDirs`（优先级 300）：

```jsonc
// %DSH_HOME%/config.json  （没有 DSH_HOME 就是 ~/.dsh/config.json）
{
  "customSkillDirs": [
    "D:\\skills\\ai-skills-library\\dsh-skills"
  ]
}
```

**方式二：项目级挂载（只对某个项目生效，优先级 100，覆盖全局）**

在你要用技能的项目根目录建软链接或直接复制：

```bash
# 你项目的 .dsh/skills 指向仓库的 dsh-skills
mklink /D "D:\你的项目\.dsh\skills" "D:\skills\ai-skills-library\dsh-skills"
```

> `mklink` 需要在 **管理员 cmd** 里执行；Git Bash 用 `cmd //c mklink /D ...`。
> 不想用链接就直接复制目录，但更新时要手动同步。

### 3. 验证

重启 DSH 会话，让它扫描一次。生效标志：

- 会话启动时能列出技能（只读 frontmatter，正文不进上下文）
- 输入 `/` 能看到 337 个技能名
- 模型可自行通过内置 `skill({name})` 工具按需加载正文

---

## 方案 B：抽几个技能到全局目录

只要其中一部分（比如 12 个科研常用技能），复制到用户级全局技能目录：

```bash
# 用户级（所有项目可见，优先级 500）
mkdir -p ~/.agents/skills
cp -r "D:\skills\ai-skills-library\dsh-skills\research-starter-kit" ~/.agents/skills/
```

优先级从高到低，序号小者覆盖大者：

| 优先级 | 路径 | 用途 |
|---|---|---|
| 100 | `<项目>/.dsh/skills` | 项目专用，最高 |
| 200 | `<项目>/.agents/skills` | 项目通用 |
| 300 | `customSkillDirs` 配置 | 外挂目录 |
| 400 | `$DSH_HOME/skills` | 用户级 DSH |
| 500 | `~/.agents/skills` | 用户级通用 |
| 600 | 内置 bundled | 最低 |

---

## 更新流程

上游仓库有更新时，重跑抓取 → 重建 → 推送，然后本地 `git pull`：

```bash
cd D:\skills\ai-skills-library && git pull
```

DSH 侧通常需要重启会话才会重新扫描。

---

## 常见坑

1. **目录名必须 kebab-case**，且与 frontmatter 的 `name` 一致 —— 否则技能不加载。
2. **description 上限 500 字符**，超出被静默截断（本库已全部压到 495 以内）。
3. **只读 frontmatter**：references/scripts/assets 不会自动进上下文，需要时由正文里的路径按需读取。
4. **同名技能高位覆盖低位**，不会报错，只会静默取优先级高的那个 —— 排查「改了没生效」先看有没有重名。
5. **`disable-model-invocation: true`** 让技能只能用户显式 `/调用`，模型不能自动加载。
6. **Windows 路径用双反斜杠或正斜杠**（JSON 里 `\\` 或 `/`），单反斜杠会被当转义。
