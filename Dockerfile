# Use the official Neko Firefox image
FROM m1k1o/neko:firefox

# Set environment variables
ENV NEKO_SCREEN="1920x1080@30"
ENV NEKO_PASSWORD="neko"
ENV NEKO_PASSWORD_ADMIN="admin"
ENV NEKO_EPR="52000-52100"

# Expose necessary ports (Koyeb only supports TCP, so WebRTC may have issues)
EXPOSE 8080

# Start Neko in the foreground to prevent container exit
CMD ["neko","serve"]

