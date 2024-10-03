# 使用 Debian 最新版本作为基础镜像
FROM debian:latest

# 更新系统并安装 Cockpit
RUN apt-get update && \
    apt-get install -y cockpit && \
    systemctl enable --now cockpit.socket

# 清理不必要的文件
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# 启动 systemd
CMD ["/sbin/init"]
