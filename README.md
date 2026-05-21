<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)">
    <img alt="Tech Blog Generator" width="600" src="https://img.shields.io/badge/Tech%20Blog-Generator%20v2.0-3b82f6?style=for-the-badge&logo=markdown&logoColor=white">
  </picture>
</p>

<p align="center">
  <b>🇨🇳 将代码和文档转化为高质量中英文技术博客的 AI Skill</b><br>
  <b>🇬🇧 Transform source code & docs into production-ready technical blog posts</b>
</p>

<p align="center">
  <a href="#-快速开始--quick-start"><b>快速开始</b></a> ·
  <a href="#-核心能力--key-features"><b>核心能力</b></a> ·
  <a href="#-项目结构--project-structure"><b>项目结构</b></a> ·
  <a href="#-致谢--credits"><b>致谢</b></a>
</p>

---

## 📖 这是什么？ / What Is This?

**中文**：`tech-blog-generator` 是一个面向 AI Agent 的 Skill 包。你把代码文件和参考文档交给它，它输出一篇结构完整、论证严谨、零废话的技术博客——中英文都可以。

它不只是"生成文章"，而是模拟一名 **Senior Staff Engineer** 的写作过程：先分析代码架构，再选择最适合的文体（教程/深度解析/对比评测/复盘报告/速查技巧/架构概览），动笔时严格遵循 21 条写作规则（来自 Strunk & White、Orwell、Pinker 等经典著作 + 9 条 AI 特定规则），完成后执行 3 遍自审（结构/句式/读者视角），才交付给你。

**English**: `tech-blog-generator` is an AI Agent skill that turns your code files and reference docs into structured, evidence-backed, zero-fluff technical blog posts — in either English or Chinese.

It doesn't just "generate an article." It emulates the workflow of a **Senior Staff Engineer**: first analyzes your code's architecture, picks the most appropriate genre (6 templates), writes under 21 strict rules (adapted from Strunk & White, Orwell, Pinker, plus 9 AI-specific rules), then self-audits across 3 passes (structure / sentence / reader perspective) before delivering.

---

## 🚀 快速开始 / Quick Start

**中文**：将仓库克隆到你的 OpenClaw skills 目录：

**English**: Clone to your OpenClaw skills directory:

```bash
git clone https://github.com/YardonYan/tech-blog-generator.git ~/.qclaw/skills/tech-blog-generator
```

**中文**：然后在对话中上传你的代码文件，说 "write a blog" 或 "写一篇技术博客" 即可。

**English**: Then upload your code files in a conversation and say "write a blog" or "写一篇技术博客".

### 支持的触发词 / Trigger Keywords

| 🇬🇧 English | 🇨🇳 中文 |
|------------|---------|
| write a blog, generate tutorial, explain code | 写博客、写教程、代码讲解、生成文档 |
| deep dive, architecture overview, write a postmortem | 深度解析、架构概览、复盘报告、技术分享 |
| create documentation, code review blog | 源码分析、设计文档、技术写作 |

### 支持的文件类型 / Supported File Types

| 类型 / Type | 扩展名 / Extensions |
|-------------|---------------------|
| 代码 / Code | `.py` `.go` `.java` `.js` `.ts` `.jsx` `.tsx` `.rs` `.cpp` `.cs` `.kt` `.swift` |
| 文档 / Docs | `.md` `.pdf` `.txt` `.yaml` `.dockerfile` |

---

## ⭐ 核心能力 / Key Features

| 能力 / Feature | 🇨🇳 中文说明 | 🇬🇧 English |
|---|---|---|
| **21 条写作规则** | 12 条经典写作权威 + 9 条 AI 特定规则，每条有严重度分级和 BAD→GOOD 示例 | 12 canonical rules (Strunk & White, Orwell, Pinker, Gopen & Swan) + 9 field-observed AI-specific rules, each with severity level and BAD→GOOD examples |
| **6 种文体模板** | 教程 · 深度解析 · 对比评测 · 复盘报告 · 速查技巧 · 架构概览 | Tutorial · Deep Dive · Comparison · Postmortem · Quick Tip · Architecture Overview |
| **中文写作模式** | 完整的中文技术写作规则：黑话词表（20+ 词）、句式禁令、TL;DR 三段式 | Full Chinese mode: buzzword blocklist (20+ terms), sentence-level prohibitions, TL;DR 3-part structure |
| **具体锚点强制** | 每一段必须包含可查证的名词/数字/引用/决策，否则自审时会标红 | Every paragraph must carry a checkable proper noun, number, quote, or decision — flagged in self-audit if missing |
| **10 种语言陷阱** | Go、Python、JS/TS、Java、Rust、C++、C#、Kotlin、Swift、Docker/K8s 常见错误 | Common errors across 10 languages with symptom→cause→fix tables |
| **3 遍自审流程** | 结构审计 → 句式审计 → 读者视角审计，交付前必须全部通过 | Structure audit → Sentence audit → Reader perspective audit — all 3 must pass before delivery |
| **引证纪律** | RULE-H：每一条关于性能、行为、设计的断言必须有人/数字/文件引用支撑 | RULE-H: Every claim about performance, behavior, or design must be backed by a specific number, code reference, or documented decision |
| **ASCII/Mermaid 图表** | 自动为抽象概念生成架构图、数据流图、时序图 | Auto-generates architecture diagrams, data flow charts, sequence diagrams for abstract concepts |

---

## 🚫 它会避免什么 / What It Avoids

| ❌ 不做这个 / Avoids This | ✅ 而是做这个 / Does This Instead |
|---|---|
| 教学口吻（"let's learn", "初学者请注意"） | 同行交流语气，平等直接 |
| AI 废话（"unlock the power of", "在当今数字化时代"） | 开门见山，每句话承载信息 |
| 未解释的代码块 | 每个代码块标文件位置 + 做了什么/为什么/输入输出/坑点 |
| 模糊描述（"高效的"、"鲁棒的"） | 给出具体数字和机制说明 |
| 假具体性（拍脑袋的百分比、编造的名称） | 宁可少写一个数字，也不编造 |
| 客服语气（"Great question!", "希望能帮到你"） | 答完就停，不做仪式感收尾 |
| 中文黑话（闭环、赋能、抓手、落地） | 具体动作/对象/约束 |

---

## 📁 项目结构 / Project Structure

```
tech-blog-generator/
├── SKILL.md                         # 🔧 AI 核心指令（21 规则、6 文体、3 遍自审）
├── README.md                        # 📖 本文档
├── LICENSE                          # 📄 MIT
├── agents/
│   └── openai.yaml                  # 🎨 UI 元数据
├── references/
│   ├── writing_rules.md             # 📚 21 条写作规则完整参考（含 BAD→GOOD 示例）
│   ├── style_guide.md               # 🚫 禁用词组与反模式
│   ├── common_pitfalls.md           # 🐛 10 种语言常见错误速查
│   ├── chinese_writing.md           # 🀄 中文技术写作规则 + 黑话词表
│   ├── blog_templates.md            # 📋 6 种文体结构模板
│   └── self_review_checklist.md     # ✅ 3 遍审计清单
└── scripts/
    ├── validate_yaml.py             # 🔍 Frontmatter 校验
    ├── count_tokens.py              # 📊 Token 估算
    └── review_draft.py              # 🤖 自动化风格检查
```

---

## 📝 示例 / Example

**输入 / Input:**
> 这是 `main.go` 和 `worker.go`，写一篇关于并发模型的深度解析。

**输出 / Output:**
```markdown
---
title: "Go Worker Pool：缓冲 Channel 如何实现天然背压"
description: "逐行分析我们的 worker pool 实现，展示有界 channel 如何在不依赖外部组件的情况下提供流量控制。"
tags: [go, concurrency, worker-pool, channels]
language: zh
genre: deep-dive
---

## 问题

线上 p95 延迟从 120ms 飙到 450ms，定位到未限流的 goroutine 数量...

## 架构

[ASCII 图：job dispatch → buffered channel → worker pool]

## 代码走读

文件：main.go:32-58
```go
func Dispatch(jobs <-chan Job, workers int) { ... }
```
做了什么：用容量 100 的缓冲 channel 创建 worker pool...
为什么这样设计：channel 写满时 Dispatch 自动阻塞 → 分发速率无法超过处理速率 → 天然背压。
输入：`<-chan Job`（上游 job 流），`workers int`（并发数）
输出：无返回值，通过闭包写入结果 channel
坑点：capacity 设太高（如 10000）会掩盖 worker 瓶颈，设 100 让背压几秒内显现

## 常见陷阱

| 症状 | 根因 | 修复 |
|:---|:---|:---|
| `all goroutines asleep` | 无缓冲 channel 无接收者 | 加 buffer 或确保接收者存在 |
| `concurrent map write` | 并发写 map 无锁 | 用 sync.RWMutex |
```

---

## 🙏 致谢 / Credits

本项目的写作规则体系和设计思想深受以下优秀开源项目的影响：

This project's writing rule system and design philosophy are deeply influenced by the following excellent open-source projects:

| 项目 / Project | 作者 / Author | 贡献 / Contribution |
|---|---|---|
| **agent-style** | [yzhao062](https://github.com/yzhao062) | 21 条分级写作规则框架，严重度分级，BAD→GOOD 示例 |
| **WRITING.md** | [Anbeeld](https://github.com/Anbeeld) | 具体锚点体系，假具体性防范，自审工作流 |
| **technical-writing** | [luoling8192](https://github.com/luoling8192) | 中文技术写作规则，黑话词表，Few-Shot 修正 |
| **technical-writing-template** | [BolajiAyodeji](https://github.com/BolajiAyodeji) | 博客结构模板标准化 |

**经典写作权威 / Canonical Writing Authorities**: Strunk & White (*The Elements of Style*), George Orwell (*Politics and the English Language*), Steven Pinker (*The Sense of Style*), Gopen & Swan (*The Science of Scientific Writing*)

---

## 📄 许可证 / License

MIT — 自由使用、修改、分发。 / Free to use, modify, and distribute.
