# Tech Blog Generator

A high-precision OpenClaw skill that transforms source code and documentation into production-ready technical blog posts.

## What It Does

Transforms your code files into structured technical blog posts with:
- ASCII diagrams for architecture/flow visualization
- Comparative analysis tables
- Step-by-step code walkthroughs
- Troubleshooting guides

## Trigger Keywords

Activate this skill when users say:
- "write a blog"
- "generate tutorial"
- "explain code"
- "create documentation"
- "技术博客" / "写博客"

## Supported Files

| Type | Extensions |
|------|------------|
| Code | `.py`, `.go`, `.java`, `.js`, `.ts`, `.rs` |
| Docs | `.md`, `.pdf`, `.txt` |

## Example Usage

```
User: Here's my main.go. Write a blog about the concurrency model.

Output:
├── Title: Deep Dive into Go Channel Concurrency Patterns
├── ASCII diagram of goroutine flows
├── Table comparing mutex vs channel
├── Code walkthrough with explanations
└── Troubleshooting table
```

## Anti-Patterns (What It Avoids)

This skill enforces strict constraints:

- NO pedagogical tone ("let's learn", "beginners")
- NO AI fluff ("in today's digital landscape", "happy coding")
- NO unexplained code blocks
- NO vague descriptions ("efficient", "robust")

## Structure

```
tech-blog-generator/
├── SKILL.md              # Core AI instructions
├── README.md             # This file
├── LICENSE               # MIT
├── agents/openai.yaml    # UI metadata
├── references/           # Knowledge base (on-demand)
│   ├── style_guide.md
│   └── common_pitfalls.md
└── scripts/              # Validation tools
    ├── validate_yaml.py
    └── count_tokens.py
```

## Installation

```bash
# Clone to your OpenClaw skills directory
git clone https://github.com/YOUR_USERNAME/tech-blog-generator.git ~/.qclaw/skills/
```

## License

MIT
