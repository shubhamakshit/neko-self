# Base image
FROM m1k1o/neko:firefox

# Set environment variables
ENV DISPLAY=:99
ENV NEKO_SCREEN="1920x1080@30"
ENV NEKO_PASSWORD="neko"
ENV NEKO_PASSWORD_ADMIN="admin"
ENV NEKO_EPR="52000-52100"

# Expose ports
EXPOSE 8080

# Ensure shared memory is accessible
RUN chmod -R 777 /dev/shm

# Start Xorg and then launch Neko
CMD ["sh", "-c", "Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile /var/log/neko/xorg.log -config /etc/neko/xorg.conf :99 & neko serve"]

