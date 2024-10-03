FROM debian:bullseye-slim

# 安装 Cockpit 及其依赖
RUN apt-get update && \
    apt-get install -y cockpit sudo dbus systemd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 启用并启动 cockpit 服务
RUN systemctl enable cockpit.socket

# 使用 systemd 作为默认命令
CMD ["/sbin/init"]
