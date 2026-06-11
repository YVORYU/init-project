# CLAUDE.md - AI Behavior Guide

## Project Overview
**{{PROJECT_NAME}}** -- {{PROJECT_DESCRIPTION}}
- Language: {{LANGUAGE}}
- Tech Stack: {{TECH_STACK}}
- Project Type: {{PROJECT_TYPE}}
- Development Mode: AI-driven, phased user acceptance

## Development Mode
- AI-driven development (Design -> Implement -> Test -> Document)
- User reviews and accepts at each milestone
- When uncertain, proactively ask the user

## Workflow Rules

### 1. Task Management
- Before each phase, create a task list with TaskCreate
- Track status: pending -> in_progress -> completed
- Use Workflow to orchestrate multiple agents for complex tasks

### 2. Code Standards
- {{CODE_STANDARDS}}

### 3. Testing Standards
- {{TEST_STANDARDS}}

### 4. Documentation Standards
- Code-level docs following {{LANGUAGE}} conventions
- User-facing docs in Chinese
- Key architecture decisions in memory/decisions.md

### 5. Communication Guidelines
- Proactively report progress and issues
- Summarize changes at milestone completion
- Chinese for explanations, English for technical terms

### 6. Tool Usage
| Scenario | Tool |
|---|---|
| Small edits | Edit |
| New files | Write |
| Search code | Grep |
| Search files | Glob |
| View files | Read |
| Run commands | Bash |
| Multi-agent orchestration | Workflow |
| Task tracking | TaskCreate / TaskUpdate |
| Ask user | AskUserQuestion |
| Complex design | EnterPlanMode |
| AI memory | memory/*.md |

## Project Structure
```
{{PROJECT_ROOT}}/
├── src/               # Source code
├── tests/             # Tests
├── docs/              # Documentation
├── memory/            # AI cross-session memory
├── CLAUDE.md          # This file
├── README.md          # Project entry
└── ROADMAP.md         # Roadmap
```

## Key Constraints
- Chinese user interface, English technical terms may be retained
- LLM API calls need error handling and retry logic
- Support multi-turn conversational interaction
