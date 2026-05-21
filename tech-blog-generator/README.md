<p align="center">
  <b>🇨🇳 Tech Blog Generator v2.0 — AI 技术博客生成器</b><br>
  <sub>将代码和文档转化为高质量中英文技术博客的 OpenClaw Skill</sub>
</p>

---

## 📖 简介 / Introduction

**中文**：`tech-blog-generator` 模拟一名 **Senior Staff Engineer** 的完整写作流程。你上传代码文件和参考文档，它分析架构、选择合适的文体（6 种）、按 21 条写作规则动笔、完成后执行 3 遍自审，最终交付一篇零废话、全证据链的技术博客。

**English**: `tech-blog-generator` emulates a **Senior Staff Engineer's** complete writing workflow. Upload code files and reference docs → it analyzes architecture, picks the right genre (6 options), writes under 21 strict rules, self-audits across 3 passes, and delivers a zero-fluff, evidence-backed technical blog post.

---

## 🚀 安装 / Installation

**中文**：克隆到 OpenClaw skills 目录即可。

**English**: Clone to your OpenClaw skills directory.

```bash
git clone https://github.com/YardonYan/tech-blog-generator.git ~/.qclaw/skills/tech-blog-generator
```

---

## 🎯 触发方式 / How to Trigger

**中文**：在对话中上传代码文件（.py / .go / .java / .js / .ts / .rs / .cpp / .cs / .kt / .swift）或文档（.md / .pdf / .yaml / .dockerfile），然后说以下任一触发词：

**English**: Upload code files or docs in a conversation, then say any of these:

| 🇬🇧 English | 🇨🇳 中文 |
|------------|---------|
| write a blog, generate tutorial | 写博客、写教程、生成文档 |
| explain code, deep dive | 代码讲解、深度解析、源码分析 |
| architecture overview | 架构概览、设计文档 |
| write a postmortem | 复盘报告、事故分析 |
| create documentation | 技术写作、技术分享 |

---

## ⭐ 核心能力 / Key Features

### 🎨 6 种文体 / 6 Genre Templates

| 文体 / Genre | 何时使用 / When to Use | 语气 / Tone |
|---|---|---|
| **教程 Tutorial** | 分步实现教学 | 同行指路，不说教 |
| **深度解析 Deep Dive** | 单一概念/机制的透彻分析 | 分析型，精确 |
| **对比评测 Comparison** | 多种方案/技术的并列对比 | 中立，证据驱动 |
| **复盘报告 Postmortem** | 事故或项目回顾 | 事实导向，不追责 |
| **速查技巧 Quick Tip** | 单一技巧或模式 | 简短，可直接使用 |
| **架构概览 Architecture** | 系统设计说明 | 系统思维，关注决策 |

### 📝 21 条写作规则 / 21 Writing Rules

**中文**：12 条经典规则（来自 Strunk & White、Orwell、Pinker、Gopen & Swan）+ 9 条 AI 特定规则（来自 2022-2026 年 LLM 生成文本的实地观察）。每条规则有严重度分级：**Critical**（违规则读者无法信任文本）> **High**（可见 AI 痕迹或清晰度失败）> **Medium**（局部可读性代价）。

**English**: 12 canonical rules (from Strunk & White, Orwell, Pinker, Gopen & Swan) + 9 field-observed AI-specific rules (from 2022-2026 LLM output observations). Each rule has severity levels: **Critical** (reader cannot trust the text if violated) > **High** (visible AI-tell or clarity failure) > **Medium** (local readability cost).

**最关键的规则 / Most Critical Rules:**

| # | 🇨🇳 规则 | 🇬🇧 Rule | 严重度 / Severity |
|---|---------|----------|-------------------|
| 01 | 知识诅咒：不要假设读者知道你所知道的 | Curse of Knowledge: don't assume reader shares your tacit knowledge | 🔴 Critical |
| H | 引证纪律：每条断言必须有证据支撑 | Citation Discipline: every claim must have evidence | 🔴 Critical |
| 03 | 具体优于抽象：用具体项替换类别词 | Concrete over Abstract: replace category words with specific items | 🟠 High |
| 04 | 删掉废话："in order to"→"to"、"due to the fact that"→"because" | Cut Needless Words: eliminate filler phrases | 🟠 High |

> 📚 完整 21 条规则：见 [`references/writing_rules.md`](references/writing_rules.md)
>
> 📚 Full 21 rules: see [`references/writing_rules.md`](references/writing_rules.md)

### 🀄 中文写作模式 / Chinese Writing Mode

**中文**：当用户要求中文输出或提供中文材料时，自动激活中文模式。包含：
- **黑话词表**（20+ 词，每个有具体替代方向）：生态→列出依赖关系、赋能→让用户能 X、闭环→A 之后 B 也接进去了、抓手→我们能改的那个变量是 X
- **抢结论词禁止**：很清楚、说明了、显然、真正、自然会
- **对立句法禁止**：「不是……而是……」「不在……而在……」
- **主持口吻删除**：「聊到这里」「先把 X 单独拿出来说」「这张图想说明的事情很简单」→ 直接删，不换成语
- **空评价词替换**：「很顺」→ 改成具体约束

> 🀄 完整中文规则：见 [`references/chinese_writing.md`](references/chinese_writing.md)

### 🔍 3 遍自审 / 3-Pass Self-Audit

| 遍次 / Pass | 做什么 / What It Checks |
|---|---|
| **第 1 遍：结构审计** | 开头有没有讲清楚解决什么问题？每节是否有清晰目的？结论和开头是否呼应？ |
| **第 2 遍：句式审计** | Ctrl+F 扫灭 26 种禁用词组。查具体锚点（每段至少一个可查证细节）。查被动语态滥用。查代码块是否有文件引用和解释。 |
| **第 3 遍：读者视角** | 一个没看过代码库的人能跟得上吗？资深工程师会觉得被说教吗？只有 2 分钟的读者能抓住要点吗？ |

> ✅ 完整审计清单：见 [`references/self_review_checklist.md`](references/self_review_checklist.md)

### 🐛 10 种语言常见陷阱 / 10-Language Pitfalls

涵盖 Go、Python、JS/TS、Java、Rust、C++、C#、Kotlin、Swift、Docker/K8s 的常见错误，每条有「症状→根因→修复」格式。

> 🐛 完整陷阱表：见 [`references/common_pitfalls.md`](references/common_pitfalls.md)

---

## 🚫 反模式 / Anti-Patterns

| ❌ 不做 | ✅ 做 |
|--------|------|
| 教学口吻（"Let's learn", "初学者请注意"） | 同行交流，平等直接 |
| AI 废话（"In today's digital landscape", "在当今数字化时代"） | 开门见山，每句话承载信息 |
| 未解释的代码块 | 每个块标文件位置 + What/Why/I/O/Gotcha |
| 模糊描述（"高效的", "鲁棒的"） | 给出具体数字和机制 |
| 假具体性（编造数字、名称） | 宁可少写，不编造 |
| 客服语气（"Great question!", "希望能帮到你"） | 答完就停，不做仪式感收尾 |
| 中文黑话（闭环、赋能、抓手、落地） | 具体动作/对象/约束 |
| 千篇一律的段落结构 | 让段落之间的关系驱动结构，不套模板 |

---

## 📁 文件结构 / File Structure

```
tech-blog-generator/
├── SKILL.md                         # 🔧 AI 核心指令（21 规则、6 文体、3 遍自审）
├── README.md                        # 📖 本文档
├── LICENSE                          # 📄 MIT
├── agents/
│   └── openai.yaml                  # 🎨 UI 元数据
├── references/
│   ├── writing_rules.md             # 📚 21 条规则完整参考 + BAD→GOOD 示例
│   ├── style_guide.md               # 🚫 禁用词组与反模式
│   ├── common_pitfalls.md           # 🐛 10 种语言常见错误
│   ├── chinese_writing.md           # 🀄 中文写作规则 + 黑话词表
│   ├── blog_templates.md            # 📋 6 种文体结构模板
│   └── self_review_checklist.md     # ✅ 3 遍审计清单
└── scripts/
    ├── validate_yaml.py             # 🔍 Frontmatter 校验
    ├── count_tokens.py              # 📊 Token 估算
    └── review_draft.py              # 🤖 自动化风格检查
```

---

## 📝 示例 / Example

### 输入 / Input

> 这是 `main.go` 和 `worker.go`，写一篇中文深度解析。

### 输出 / Output

```markdown
---
title: "Go Worker Pool：缓冲 Channel 如何实现天然背压"
description: "逐行分析 worker pool 实现，展示有界 channel 如何在不依赖外部组件的情况下提供流量控制"
tags: [go, concurrency, worker-pool, channels]
language: zh
genre: deep-dive
---

## 问题

线上 p95 延迟从 120ms 飙到 450ms，定位到未限流的 goroutine 数量在高峰期
从 8 个暴增到 200+，每个都在争抢数据库连接池（上限 50）。

## 架构

[Job Dispatcher] --> [jobChan (cap=100)] --> [Worker 1]
                                           --> [Worker 2]
                                           --> [Worker 3]

jobChan（main.go:45）是一个容量 100 的缓冲 channel。
Worker 在无 job 时阻塞在接收端，避免 CPU 空转。
channel 写满时 Dispatch() 阻塞在发送端 → 分发速率无法超过处理速率 → 天然背压。

## 代码走读

文件：main.go:32-58
```go
func Dispatch(jobs <-chan Job, workers int) { ... }
```
做了什么：用容量 100 的缓冲 channel 创建 worker pool
为什么这样设计：channel 写满时自动阻塞，实现无外部依赖的速率控制
输入：<-chan Job（上游 job 流），workers int（并发数）
输出：通过闭包写入 result channel
坑点：capacity 设太高（如 10000）会掩盖 worker 瓶颈，设 100 让背压几秒内显现

## 常见陷阱

| 症状 | 根因 | 修复 |
|:---|:---|:---|
| all goroutines asleep | 无缓冲 channel 无接收者 | 加 buffer 或确保接收者存在 |
| concurrent map write | 并发写 map 无锁 | 用 sync.RWMutex |
```

---

## 🙏 致谢 / Credits

| 项目 / Project | 作者 / Author | 贡献 / Contribution |
|---|---|---|
| **agent-style** | [yzhao062](https://github.com/yzhao062) | 21 条分级写作规则框架，严重度分级，BAD→GOOD 示例 |
| **WRITING.md** | [Anbeeld](https://github.com/Anbeeld) | 具体锚点体系，假具体性防范，自审工作流 |
| **technical-writing** | [luoling8192](https://github.com/luoling8192) | 中文技术写作规则，黑话词表，Few-Shot 修正 |
| **technical-writing-template** | [BolajiAyodeji](https://github.com/BolajiAyodeji) | 博客结构模板标准化 |

经典写作权威：Strunk & White · George Orwell · Steven Pinker · Gopen & Swan

---

## 📄 许可证 / License

MIT — 自由使用、修改、分发。 / Free to use, modify, and distribute.
