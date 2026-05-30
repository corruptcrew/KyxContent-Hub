#!/bin/bash
# MoneyPrinterMerged - Git Setup Script
# Run this to initialize and push to GitHub

set -e

echo "🔧 Setting up Git repository..."

# Initialize git
git init
git checkout -b main 2>/dev/null || true

# Create .gitignore
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
venv/
.venv/
env/
ENV/
*.egg-info/
dist/
build/

# IDE
.vscode/
.idea/
*.swp
*.swo

# Config (with secrets)
config.toml
*.key
*.env

# Generated content
storage/
tasks/
*.mp4
*.mp3
*.wav

# OS
.DS_Store
Thumbs.db

# Logs
*.log
logs/
EOF

# Add all files
git add -A

# Commit
git commit -m "Initial commit: MoneyPrinterMerged - Combined video generation + automation"

echo ""
echo "✅ Git repository initialized!"
echo ""
echo "📝 Next steps:"
echo "1. Create a new repository on GitHub"
echo "2. Run these commands:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/MoneyPrinterMerged.git"
echo "   git push -u origin main"
echo ""
echo "⚠️ SECURITY: Never commit config.toml with API keys!"
