# Use the official n8n Docker image
FROM n8nio/n8n:1.54.2

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true \
    N8N_BASIC_AUTH_USER=admin \
    N8N_BASIC_AUTH_PASSWORD=admin123 \
    N8N_HOST=0.0.0.0 \
    N8N_PORT=5678 \
    N8N_PROTOCOL=http \
    TZ=America/New_York \
    N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Expose the port
EXPOSE 5678

# Use the default entrypoint and command from the base image
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
CMD ["n8n"]