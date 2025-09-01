#!/bin/bash

# Lagrange.AI Documentation - GitHub Pages Deployment Script

echo "📚 Lagrange.AI Documentation Deployment"
echo "========================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if this is a git repository
if [ ! -d .git ]; then
    echo "Initializing Git repository..."
    git init
    git branch -M main
fi

# Get GitHub username and repository name
read -p "Enter your GitHub username: " username
read -p "Enter your repository name (e.g., lagrange-docs): " reponame

# Set remote origin
echo ""
echo "Setting up remote repository..."
if git remote get-url origin &> /dev/null; then
    echo "Remote origin already exists. Updating..."
    git remote set-url origin "https://github.com/$username/$reponame.git"
else
    git remote add origin "https://github.com/$username/$reponame.git"
fi

# Add all files
echo ""
echo "Adding files to Git..."
git add .

# Commit changes
echo ""
read -p "Enter commit message (default: 'Deploy Lagrange.AI documentation'): " commit_msg
commit_msg=${commit_msg:-"Deploy Lagrange.AI documentation"}
git commit -m "$commit_msg"

# Push to GitHub
echo ""
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Files pushed to GitHub successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Go to: https://github.com/$username/$reponame/settings/pages"
echo "2. Under 'Source', select 'Deploy from a branch'"
echo "3. Select 'main' branch and '/ (root)' folder"
echo "4. Click 'Save'"
echo ""
echo "🌐 Your documentation will be available at:"
echo "   https://$username.github.io/$reponame/"
echo ""
echo "Note: It may take 2-5 minutes for the site to become available."