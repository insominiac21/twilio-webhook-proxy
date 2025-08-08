@echo off
echo 🚀 Deploying Twilio Webhook Proxy to Railway
echo ============================================

REM Check if we're in the right directory
if not exist "server.js" (
    echo ❌ Error: Please run this script from the twilio-webhook-proxy directory
    pause
    exit /b 1
)

echo ✅ Found server.js - we're in the right directory

REM Initialize git if not already done
if not exist ".git" (
    echo 📦 Initializing git repository...
    git init
)

REM Add all files
echo 📝 Adding files to git...
git add .

REM Commit
echo 💾 Committing changes...
git commit -m "Deploy Twilio webhook proxy for n8n Content-Type fix"

echo.
echo 🎉 Files are ready for deployment!
echo.
echo 🔗 Next steps:
echo 1. Push to GitHub: git remote add origin ^<your-repo-url^>
echo 2. Push: git push -u origin main  
echo 3. Deploy on Railway: https://railway.app
echo 4. Update Twilio webhook URL to your Railway domain
echo.
echo 📖 See DEPLOY.md for detailed instructions
echo.
pause
