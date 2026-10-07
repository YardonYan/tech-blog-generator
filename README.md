<div align="center">

<img src="assets/hero.png" alt="tech-blog-generator — 把代码和文档，变成读得下去的技术博客" width="100%">

**将代码和文档转化为高质量中英文技术博客**

[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-2.0-green.svg)](SKILL.md)
[![Stars](https://img.shields.io/github/stars/YardonYan/tech-blog-generator?style=social)](https://github.com/YardonYan/tech-blog-generator)
[![平台](https://img.shields.io/badge/平台-OpenClaw%20·%20Claude%20Code%20·%20Cursor-orange.svg)](#快速开始)
[![规则](https://img.shields.io/badge/写作规则-21%20条-blue.svg)](#21-条写作规则)
[![文体](https://img.shields.io/badge/文体模板-6%20种-purple.svg)](#6-种文体)

**中文** · [English](README.en.md)

</div>

---

> 把代码文件和参考文档交给它，它输出一篇结构完整、论证严谨、零废话的技术博客——中英文都可以。

它不只是「生成一篇文章」，而是模拟一名资深主任工程师的写作过程：先分析代码架构，再选择最适合的文体，动笔时严格遵循 21 条写作规则，完成后执行 3 遍自审，才交付。

## 目录

- [这是什么](#这是什么)
- [快速开始](#快速开始)
- [核心能力](#核心能力)
- [6 种文体](#6-种文体)
- [21 条写作规则](#21-条写作规则)
- [中文写作模式](#中文写作模式)
- [3 遍自审](#3-遍自审)
- [10 种语言常见陷阱](#10-种语言常见陷阱)
- [它会避免什么](#它会避免什么)
- [项目结构](#项目结构)
- [示例](#示例)
- [致谢](#致谢)
- [许可证](#许可证)

---

<a id="这是什么"></a>

## 这是什么

`tech-blog-generator` 是一个面向 AI Agent 的 Skill 包。你把代码文件和参考文档交给它，它输出一篇结构完整、论证严谨、零废话的技术博客。

写作过程分三步：

1. **分析架构**——先读懂代码的结构、关键决策与约束
2. **选择文体**——从 6 种模板里挑最合适的一种（教程 / 深度解析 / 对比评测 / 复盘报告 / 速查技巧 / 架构概览）
3. **按规则写作并自审**——21 条写作规则约束行文，3 遍自审（结构 / 句式 / 读者视角）通过后才交付

<a id="快速开始"></a>

## 快速开始

克隆到 OpenClaw skills 目录：

```bash
git clone https://github.com/YardonYan/tech-blog-generator.git ~/.qclaw/skills/tech-blog-generator
```

然后在对话中上传代码文件，说「写一篇技术博客」或 "write a blog" 即可。

### 触发词

| 中文 | English |
|------|---------|
| 写博客、写教程、代码讲解、生成文档 | write a blog, generate tutorial, explain code |
| 深度解析、架构概览、复盘报告、技术分享 | deep dive, architecture overview, write a postmortem |
| 源码分析、设计文档、技术写作 | create documentation, code review blog |

### 支持的文件类型

| 类型 | 扩展名 |
|------|--------|
| 代码 | `.py` `.go` `.java` `.js` `.ts` `.jsx` `.tsx` `.rs` `.cpp` `.cs` `.kt` `.swift` |
| 文档 | `.md` `.pdf` `.txt` `.yaml` `.dockerfile` |

<a id="核心能力"></a>

## 核心能力

| 能力 | 说明 |
|------|------|
| **21 条写作规则** | 12 条经典写作权威（Strunk & White、Orwell、Pinker、Gopen & Swan）+ 9 条 AI 特定规则，每条有严重度分级和 BAD→GOOD 示例 |
| **6 种文体模板** | 教程、深度解析、对比评测、复盘报告、速查技巧、架构概览 |
| **中文写作模式** | 完整的中文技术写作规则：黑话词表（20+ 词）、句式禁令、TL;DR 三段式 |
| **具体锚点强制** | 每一段必须包含可查证的名词、数字、引用或决策，缺失则自审标红 |
| **10 种语言陷阱** | Go、Python、JS/TS、Java、Rust、C++、C#、Kotlin、Swift、Docker/K8s 常见错误 |
| **3 遍自审流程** | 结构审计、句式审计、读者视角审计，交付前必须全部通过 |
| **引证纪律** | 每一条关于性能、行为、设计的断言必须有人名、数字或文件引用支撑 |
| **ASCII / Mermaid 图表** | 自动为抽象概念生成架构图、数据流图、时序图 |

<a id="6-种文体"></a>

## 6 种文体

| 文体 | 何时使用 | 语气 |
|------|----------|------|
| **教程** Tutorial | 分步实现教学 | 同行指路，不说教 |
| **深度解析** Deep Dive | 单一概念或机制的透彻分析 | 分析型，精确 |
| **对比评测** Comparison | 多种方案或技术的并列对比 | 中立，证据驱动 |
| **复盘报告** Postmortem | 事故或项目回顾 | 事实导向，不追责 |
| **速查技巧** Quick Tip | 单一技巧或模式 | 简短，可直接使用 |
| **架构概览** Architecture | 系统设计说明 | 系统思维，关注决策 |

<a id="21-条写作规则"></a>

## 21 条写作规则

规则体系由两部分组成：12 条经典规则（来自 Strunk & White、Orwell、Pinker、Gopen & Swan）+ 9 条 AI 特定规则（来自 2022-2026 年 LLM 生成文本的实地观察）。

每条规则有严重度分级：

- **Critical**——违规则读者无法信任文本
- **High**——可见的 AI 痕迹或清晰度失败
- **Medium**——局部可读性代价

最关键的几条：

| # | 规则 | 严重度 |
|---|------|--------|
| 01 | 知识诅咒：不要假设读者知道你所知道的 | Critical |
| H | 引证纪律：每条断言必须有证据支撑 | Critical |
| 03 | 具体优于抽象：用具体项替换类别词 | High |
| 04 | 删掉废话："in order to" → "to"，"due to the fact that" → "because" | High |

完整 21 条规则见 [`references/writing_rules.md`](references/writing_rules.md)。

<a id="中文写作模式"></a>

## 中文写作模式

当用户要求中文输出或提供中文材料时，自动激活中文模式。包含：

- **黑话词表**（20+ 词，每个有具体替代方向）：生态 → 列出依赖关系；赋能 → 让用户能 X；闭环 → A 之后 B 也接进去了；抓手 → 我们能改的那个变量是 X
- **抢结论词禁止**：很清楚、说明了、显然、真正、自然会
- **对立句法禁止**：「不是……而是……」「不在……而在……」
- **主持口吻删除**：「聊到这里」「先把 X 单独拿出来说」「这张图想说明的事情很简单」——直接删，不换成语
- **空评价词替换**：「很顺」→ 改成具体约束

完整中文规则见 [`references/chinese_writing.md`](references/chinese_writing.md)。

<a id="3-遍自审"></a>

## 3 遍自审

| 遍次 | 检查什么 |
|------|----------|
| **第 1 遍：结构审计** | 开头有没有讲清楚解决什么问题？每节是否有清晰目的？结论和开头是否呼应？ |
| **第 2 遍：句式审计** | 扫灭 26 种禁用词组；检查具体锚点（每段至少一个可查证细节）；检查被动语态滥用；检查代码块是否有文件引用和解释 |
| **第 3 遍：读者视角** | 一个没看过代码库的人能跟得上吗？资深工程师会觉得被说教吗？只有两分钟的读者能抓住要点吗？ |

完整审计清单见 [`references/self_review_checklist.md`](references/self_review_checklist.md)。

<a id="10-种语言常见陷阱"></a>

## 10 种语言常见陷阱

涵盖 Go、Python、JS/TS、Java、Rust、C++、C#、Kotlin、Swift、Docker/K8s 的常见错误，每条按「症状 → 根因 → 修复」格式组织。

完整陷阱表见 [`references/common_pitfalls.md`](references/common_pitfalls.md)。

---

<a id="它会避免什么"></a>

## 它会避免什么

| 不做这个 | 而是做这个 |
|----------|------------|
| 教学口吻（"let's learn"、"初学者请注意"） | 同行交流语气，平等直接 |
| AI 废话（"unlock the power of"、"在当今数字化时代"） | 开门见山，每句话承载信息 |
| 未解释的代码块 | 每个代码块标文件位置，并说明做了什么、为什么、输入输出、坑点 |
| 模糊描述（"高效的"、"鲁棒的"） | 给出具体数字和机制说明 |
| 假具体性（拍脑袋的百分比、编造的名称） | 宁可少写一个数字，也不编造 |
| 客服语气（"Great question!"、"希望能帮到你"） | 答完就停，不做仪式感收尾 |
| 中文黑话（闭环、赋能、抓手、落地） | 具体动作、对象与约束 |

---

<a id="项目结构"></a>

## 项目结构

```
tech-blog-generator/
├── SKILL.md                         # AI 核心指令（21 规则、6 文体、3 遍自审）
├── README.md                        # 中文说明（本文件）
├── README.en.md                     # English README
├── LICENSE                          # Apache-2.0 许可证
├── assets/
│   └── hero.png                     # README 门面图
├── tools/
│   └── gen_readme_images.py         # 生成 README 配图（Pillow）
├── agents/
│   └── openai.yaml                  # UI 元数据
├── docs/
│   └── backfill.md                  # 归档：素材回填记录
├── references/
│   ├── writing_rules.md             # 21 条写作规则完整参考（含 BAD→GOOD 示例）
│   ├── style_guide.md               # 禁用词组与反模式
│   ├── common_pitfalls.md           # 10 种语言常见错误速查
│   ├── chinese_writing.md           # 中文技术写作规则 + 黑话词表
│   ├── blog_templates.md            # 6 种文体结构模板
│   └── self_review_checklist.md     # 3 遍审计清单
└── scripts/
    ├── validate_yaml.py             # Frontmatter 校验
    ├── count_tokens.py              # Token 估算
    └── review_draft.py              # 自动化风格检查
```

---

<a id="示例"></a>

## 示例

**输入**：

> 这是 `main.go` 和 `worker.go`，写一篇关于并发模型的深度解析。

**输出**：

````markdown
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
````

---

<a id="致谢"></a>

## 致谢

本项目的写作规则体系和设计思想深受以下开源项目影响：

| 项目 | 作者 | 贡献 |
|------|------|------|
| **agent-style** | [yzhao062](https://github.com/yzhao062) | 21 条分级写作规则框架、严重度分级、BAD→GOOD 示例 |
| **WRITING.md** | [Anbeeld](https://github.com/Anbeeld) | 具体锚点体系、假具体性防范、自审工作流 |
| **technical-writing** | [luoling8192](https://github.com/luoling8192) | 中文技术写作规则、黑话词表、Few-Shot 修正 |
| **technical-writing-template** | [BolajiAyodeji](https://github.com/BolajiAyodeji) | 博客结构模板标准化 |

**经典写作权威**：Strunk & White（*The Elements of Style*）、George Orwell（*Politics and the English Language*）、Steven Pinker（*The Sense of Style*）、Gopen & Swan（*The Science of Scientific Writing*）

---

<a id="许可证"></a>

## 许可证

**Apache-2.0**——自由使用、修改、分发，需保留署名与协议声明。完整条款见 [LICENSE](LICENSE)。

Copyright 2026 YardonYan
