#!/bin/bash

echo "🚀 Deploying Twilio Webhook Proxy to Railway"
echo "============================================"

# Check if we're in the right directory
if [ ! -f "server.js" ]; then
    echo "❌ Error: Please run this script from the twilio-webhook-proxy directory"
    exit 1
fi

echo "✅ Found server.js - we're in the right directory"

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add all files
echo "📝 Adding files to git..."
git add .

# Commit
echo "💾 Committing changes..."
git commit -m "Deploy Twilio webhook proxy for n8n Content-Type fix"

echo ""
echo "🎉 Files are ready for deployment!"
echo ""
echo "🔗 Next steps:"
echo "1. Push to GitHub: git remote add origin <your-repo-url>"
echo "2. Push: git push -u origin main"
echo "3. Deploy on Railway: https://railway.app"
echo "4. Update Twilio webhook URL to your Railway domain"
echo ""
echo "📖 See DEPLOY.md for detailed instructions"
