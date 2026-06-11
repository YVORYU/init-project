# Vibcoding Workflow Guide

This document explains how AI and human collaborate on this project.

## What is Vibcoding?

Vibcoding (Vibe Coding) is an AI-driven programming approach:

- **You** (Human) = Product Manager + Reviewer
  - Define features and direction
  - Review results at milestones
  - Answer AI's questions
- **AI** = Architect + Developer + Tester + Documenter
  - Design system architecture
  - Write all code
  - Write and run tests
  - Maintain documentation
  - Ask questions when uncertain

## Workflow

```
You propose requirements/direction
    |
    v
AI understands -> Needs decision? -> Ask you
    |
    v
AI designs solution -> Write Plan
    |
    v
You approve plan
    |
    v
AI implements (TaskCreate tracking)
    |
    v
AI tests and verifies -> Updates docs
    |
    v
You review results -> Next phase
```

## Communication Guidelines

### AI reports:
- What it is currently working on
- What it has completed
- What problems it encountered

### AI asks you when:
- Multiple reasonable architecture options exist
- Requirements are underspecified
- Feature boundaries are unclear

### You can always:
- Say "stop" -- AI pauses and listens for new instructions
- Say "change approach" -- AI redesigns
- Say "continue" -- AI proceeds with current direction
- Directly edit code -- AI will respect your changes
