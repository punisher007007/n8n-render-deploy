# n8n Render Deploy

Deploy n8n (workflow automation platform) on Render.com with persistent disk storage.

## 🚀 Quick Deploy

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/punisher007007/n8n-render-deploy)

## 📋 What's Included

- **Dockerfile**: Configured n8n container with basic authentication
- **render.yaml**: Render deployment configuration with persistent disk
- **Free tier compatible**: Uses Render's free plan with 1GB persistent storage

## 🔧 Configuration

### Default Credentials
- **Username**: `admin`
- **Password**: `admin123`

⚠️ **Important**: Change these credentials after deployment for security!

### Environment Variables
- `N8N_BASIC_AUTH_ACTIVE=true` - Enables basic authentication
- `N8N_BASIC_AUTH_USER=admin` - Default username
- `N8N_BASIC_AUTH_PASSWORD=admin123` - Default password
- `TZ=America/New_York` - Timezone setting

### Persistent Storage
- **Mount Path**: `/home/node/.n8n`
- **Size**: 1GB (free tier limit)
- **Purpose**: Stores workflows, credentials, and configuration

## 🛠️ Manual Deployment Steps

1. Fork this repository
2. Connect your GitHub account to Render.com
3. Create a new Web Service from your forked repo
4. Render will automatically detect the `render.yaml` configuration
5. Deploy and access your n8n instance!

## 📱 Access Your n8n Instance

After deployment:
1. Visit your Render service URL
2. Login with username `admin` and password `admin123`
3. Start creating your automation workflows!

## 🔒 Security Recommendations

1. **Change default credentials** immediately after first login
2. Consider upgrading to a paid Render plan for better security features
3. Use environment variables for sensitive data
4. Enable additional authentication methods if needed

## 📊 Resource Usage

- **Free Tier Limits**:
  - 750 hours per month
  - Spins down after 15 minutes of inactivity
  - 1GB persistent disk storage
  - Public repositories only

## 🆙 Upgrading

To upgrade your deployment:
1. Update the files in this repository
2. Push changes to your fork
3. Render will automatically redeploy with `autoDeploy: true`

## 📚 Learn More

- [n8n Documentation](https://docs.n8n.io/)
- [Render Documentation](https://render.com/docs)
- [Docker Hub - n8n](https://hub.docker.com/r/n8nio/n8n)

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

---

**Happy Automating!** 🎉