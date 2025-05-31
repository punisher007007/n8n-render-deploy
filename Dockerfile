# Use Node.js base image and install n8n manually
FROM node:18-alpine

# Install dependencies
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    git \
    && rm -rf /var/cache/apk/*

# Create user and set permissions
RUN addgroup -g 1000 node && adduser -u 1000 -G node -s /bin/sh -D node

# Install n8n globally
RUN npm install -g n8n

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV TZ=America/New_York
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Switch to node user
USER node

# Create .n8n directory
RUN mkdir -p /home/node/.n8n

# Set working directory
WORKDIR /home/node/.n8n

# Expose port
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=60s \
  CMD wget --no-verbose --tries=1 --spider http://localhost:5678/healthz || exit 1

# Start n8n
CMD ["n8n"]