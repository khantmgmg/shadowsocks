# Use an official Shadowsocks image
FROM shadowsocks/shadowsocks-libev

# Expose the Shadowsocks ports
EXPOSE 8388
EXPOSE 8388/udp

# Set the Shadowsocks server password
ENV PASSWORD khantmgmg1412

# Start the Shadowsocks server
CMD ss-server -s 0.0.0.0 -p 8388 -k $PASSWORD -m aes-256-gcm
