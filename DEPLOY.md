# Railway Deployment Instructions

## Option 1: Direct GitHub Deployment (Recommended)

### Step 1: Push to GitHub
```bash
# Navigate to the proxy folder
cd twilio-webhook-proxy

# Initialize git repository
git init

# Add all files
git add .

# Commit
git commit -m "Add Twilio webhook proxy for n8n Cloud"

# Add GitHub remote (replace with your repository URL)
git remote add origin https://github.com/yourusername/twilio-webhook-proxy.git

# Push to GitHub
git push -u origin main
```

### Step 2: Deploy on Railway
1. Go to [railway.app](https://railway.app)
2. Click "Login" → "Login with GitHub"
3. Click "New Project"
4. Select "Deploy from GitHub repo"
5. Choose your `twilio-webhook-proxy` repository
6. Railway will automatically:
   - Detect Node.js
   - Install dependencies (`npm install`)
   - Start the server (`npm start`)
   - Assign a public URL

## Option 2: Direct Upload

### Step 1: Create Project
1. Go to [railway.app](https://railway.app) 
2. Click "New Project" → "Empty Service"
3. Click "Deploy"

### Step 2: Connect Repository
1. Click "Connect Repo" in Railway dashboard
2. Select your GitHub repository
3. Choose the `twilio-webhook-proxy` folder
4. Deploy automatically starts

## Step 3: Configure Environment (Automatic)

Railway automatically sets:
- `PORT` environment variable
- HTTPS SSL certificate
- Public domain name

## Step 4: Get Your Webhook URL

After deployment completes, you'll see:
```
✅ Deployment successful
🔗 Your app: https://twilio-webhook-proxy-production-abc123.up.railway.app
```

## Step 5: Update Twilio Webhook

1. **Twilio Console**: [console.twilio.com](https://console.twilio.com)
2. **Navigate to**: Messaging → Settings → WhatsApp Sandbox
3. **Update webhook URL**:
   
   **From:**
   ```
   https://anshpatidar21.app.n8n.cloud/webhook/whatsapp-webhook
   ```
   
   **To:**
   ```
   https://your-railway-url.up.railway.app/whatsapp-webhook
   ```

4. **Save Settings**

## Step 6: Verify Deployment

### Test the proxy:
```bash
curl https://your-railway-url.up.railway.app/
```

Should return:
```json
{
  "status": "Twilio Webhook Proxy is running! 🚀",
  "purpose": "Fixes n8n Cloud Content-Type issues with Twilio WhatsApp webhooks"
}
```

### Test WhatsApp:
Send `HELP` to `+1 415 523 8886`

## Railway Free Tier Benefits

- ✅ **500 execution hours/month** (plenty for webhooks)
- ✅ **Automatic HTTPS**
- ✅ **Custom domains available**
- ✅ **Real-time logs**
- ✅ **Zero-downtime deployments**
- ✅ **No credit card required**

## Troubleshooting

### If deployment fails:
1. Check Railway logs for errors
2. Verify `package.json` dependencies
3. Ensure `server.js` has no syntax errors

### If webhook still fails:
1. Check Railway app logs
2. Verify Twilio webhook URL is correct
3. Test the proxy endpoint directly

---

🎉 **Your proxy is now live and fixing the Content-Type issue!**
