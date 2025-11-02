#!/bin/bash

# ELITE COOL Website Deployment Script
# Run this script to set up your GitHub repository and deploy the website

echo "🚀 ELITE COOL Website Deployment Setup"
echo "======================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git branch -M main
else
    echo "✅ Git repository already initialized"
fi

# Add all files
echo "📝 Adding files to Git..."
git add .

# Commit files
echo "💾 Committing files..."
git commit -m "Initial commit: ELITE COOL website ready for deployment"

# Check if remote origin exists
if git remote get-url origin &> /dev/null; then
    echo "✅ Remote origin already configured"
else
    echo "🔗 Setting up remote repository..."
    echo "Please make sure you've created a repository named 'elite-cool-website' on GitHub"
    echo "Repository URL should be: https://github.com/Brendon1109/elite-cool-website"
    
    read -p "Press Enter to continue once you've created the repository..."
    git remote add origin https://github.com/Brendon1109/elite-cool-website.git
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Deployment setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Go to https://github.com/Brendon1109/elite-cool-website"
echo "2. Navigate to Settings > Pages"
echo "3. Under 'Source', select 'GitHub Actions'"
echo "4. Your website will be available at: https://brendon1109.github.io/elite-cool-website/"
echo ""
echo "📷 Don't forget to:"
echo "1. Add your business images to the assets/ folder"
echo "2. Replace placeholder images with professional photos"
echo "3. Test all contact methods"
echo ""
echo "🎉 Your professional website is ready to go live!"