# Twilio Webhook Proxy for n8n Cloud

🚀 **Fixes Twilio WhatsApp webhook Content-Type issues with n8n Cloud**

## 🎯 Problem This Solves

n8n Cloud cannot set custom `Content-Type` headers for webhook responses. Twilio WhatsApp webhooks require `application/xml` or `text/plain`, but n8n always returns `application/json; charset=utf-8`, causing webhook failures.

## 🔧 How It Works

```
Twilio WhatsApp → Railway Proxy → n8n Cloud Workflow
                      ↓               ↓
                Returns proper    Processes commands
                Content-Type:     & sends WhatsApp 
                application/xml   responses
```

## 🚀 Quick Deploy to Railway

### 1. Create New Repository
- Push this folder to GitHub as a new repository
- Or add it to your existing repository

### 2. Deploy to Railway
1. Go to [railway.app](https://railway.app)
2. Login with GitHub
3. Click "New Project" → "Deploy from GitHub repo"
4. Select this repository/folder
5. Railway auto-detects Node.js and deploys!

### 3. Get Your Webhook URL
After deployment, you'll get a URL like:
```
https://twilio-webhook-proxy-production.up.railway.app
```

### 4. Update Twilio Configuration
In Twilio Console → WhatsApp Sandbox Settings:

**Change webhook URL from:**
```
https://anshpatidar21.app.n8n.cloud/webhook/whatsapp-webhook
```

**To your Railway URL:**
```
https://your-railway-url.up.railway.app/whatsapp-webhook
```

## ✅ Test Your Setup

1. Send `HELP` to WhatsApp sandbox: **+1 415 523 8886**
2. You should receive the help message
3. No more Content-Type errors in Twilio debugger!

## 📁 What This Proxy Does

- **Receives** Twilio webhook requests
- **Forwards** them to your n8n workflow (unchanged)
- **Returns** proper XML response to Twilio
- **Handles** errors gracefully
- **Logs** requests for debugging

## 🔍 Monitoring

Visit your Railway URL in browser to see:
- ✅ Server status
- 📊 Health check endpoint
- 🔗 Configuration info

## 💡 Your n8n Workflow

**No changes needed!** Your n8n workflow continues to:
- Process WhatsApp commands (LIST, DELETE, MOVE, SUMMARY, HELP)
- Send responses via Twilio API
- Use Groq AI for summaries

The proxy only fixes the webhook response Content-Type issue.

---

🎉 **That's it!** Your WhatsApp Google Drive Assistant will now work perfectly with Twilio!
