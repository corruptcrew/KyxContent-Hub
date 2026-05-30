#!/bin/bash
# Push MoneyPrinterMerged to GitHub
# Usage: ./push_to_github.sh YOUR_GITHUB_USERNAME YOUR_PAT

set -e

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "❌ Usage: $0 <github_username> <personal_access_token>"
    echo ""
    echo "⚠️ SECURITY WARNING:"
    echo "Your previous PAT was exposed. Please:"
    echo "1. Go to https://github.com/settings/tokens"
    echo "2. DELETE the compromised token"
    echo "3. Create a NEW token with 'repo' scope"
    echo "4. Use the new token here"
    echo ""
    exit 1
fi

USERNAME=$1
PAT=$2
REPO_URL="https://${USERNAME}:${PAT}@github.com/${USERNAME}/MoneyPrinterMerged.git"

echo "🔗 Adding GitHub remote..."
git remote remove origin 2>/dev/null || true
git remote add origin $REPO_URL

echo "📤 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Successfully pushed to GitHub!"
echo ""
echo "📌 Your repository:"
echo "   https://github.com/${USERNAME}/MoneyPrinterMerged"
echo ""
echo "📓 Colab link:"
echo "   https://colab.research.google.com/github/${USERNAME}/MoneyPrinterMerged/blob/main/notebook.ipynb"
echo ""
echo "⚠️ IMPORTANT: Delete your PAT from bash history:"
echo "   history -c && history -w"
