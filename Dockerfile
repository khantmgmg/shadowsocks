# Use an official Shadowsocks image
FROM shadowsocks/shadowsocks-libev

# Run as root to avoid permission issues
USER root

# Expose the Shadowsocks ports
EXPOSE 8388
EXPOSE 8388/udp

# Set the Shadowsocks server password
ENV PASSWORD khantmgmg1412

# Use shell to run ss-server
CMD sh -c "ss-server -s 0.0.0.0 -p 8388 -k $PASSWORD -m aes-256-gcm"
