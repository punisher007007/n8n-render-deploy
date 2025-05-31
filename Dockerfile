FROM n8nio/n8n:latest

# Set the user to node (n8n runs as node user)
USER node

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV TZ=America/New_York
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Create the .n8n directory if it doesn't exist
RUN mkdir -p /home/node/.n8n

# Expose the port
EXPOSE 5678

# Set the working directory
WORKDIR /home/node/.n8n

# Start n8n
CMD ["n8n", "start"]