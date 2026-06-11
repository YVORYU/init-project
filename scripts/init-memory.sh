#!/bin/bash
# init-memory.sh - Initialize AI memory system
# Usage: bash init-memory.sh <project-dir> <project-name> <tech-stack>

set -e

PROJECT_DIR="$1"
PROJECT_NAME="$2"
TECH_STACK="$3"
TODAY=$(date +%Y-%m-%d)

if [ -z "$PROJECT_DIR" ] || [ -z "$PROJECT_NAME" ]; then
    echo "Usage: bash init-memory.sh <project-dir> <project-name> [tech-stack]"
    exit 1
fi

MEMORY_DIR="$PROJECT_DIR/memory"
mkdir -p "$MEMORY_DIR"

# MEMORY.md - Index
cat > "$MEMORY_DIR/MEMORY.md" << 'INDEXEOF'
# Memory Index

- [user-preferences.md](user-preferences.md) -- User preferences
- [decisions.md](decisions.md) -- Architecture decisions
INDEXEOF

# user-preferences.md
cat > "$MEMORY_DIR/user-preferences.md" << PREFSEOF
---
name: user-preferences
description: User preference records
metadata:
  type: user
---

# User Preferences

- **Language**: Chinese (English for technical terms)
- **Project Name**: $PROJECT_NAME
- **Tech Stack**: $TECH_STACK
- **Development Mode**: AI-driven, phased user acceptance
PREFSEOF

# decisions.md
cat > "$MEMORY_DIR/decisions.md" << DECSEOF
---
name: decisions
description: Architecture decision records
metadata:
  type: project
---

# Architecture Decisions

## $TODAY: Project Initialization

- **Tech Stack**: $TECH_STACK
- **Development Mode**: AI-driven
- **Project Structure**: src/ tests/ docs/ memory/
DECSEOF

echo "Memory system initialized in $MEMORY_DIR"
echo "  - MEMORY.md (index)"
echo "  - user-preferences.md"
echo "  - decisions.md"
