#!/bin/bash
echo "🛠️ Initializing TrustyReel repo structure..."

# Create folders
mkdir -p narrator renderer assets scripts infra

# Touch key files
touch README.md .gitignore milestones.md

# Populate .gitignore
cat <<EOF > .gitignore
# Ignore system files
.DS_Store
Thumbs.db

# Python artifacts
__pycache__/
*.pyc

# Logs
*.log

# Env files
.env

# Build artifacts
dist/
build/
EOF

# Populate README.md
cat <<EOF > README.md
# TrustyReel

## Overview
Modular storytelling tool for creators and agencies. Supports narration, rendering, and pipeline orchestration.

## Folders
- narrator/: voice synthesis and TTS modules
- renderer/: video stitching and visual composition
- assets/: media, config, and story inputs
- scripts/: CLI tools and automation helpers
- infra/: deployment, Docker Compose, volumes

## Milestones
- trustyreel-v0.1-repo-initialized
- trustyreel-v0.1-n8n-dashboard-live

## Startup
\`\`\`bash
docker compose -f trustyreel-compose.yml up
\`\`\`
EOF

echo "✅ Folder structure and base files ready. Time to commit your first milestone!"

