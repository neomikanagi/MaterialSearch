# 使用精简版 Debian 作为基础镜像
FROM debian:stable-slim

# 更新系统并安装 Cockpit 和其他依赖
RUN apt-get update && \
    apt-get install -y cockpit sudo dbus && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 启动 Cockpit Web 服务
CMD ["cockpit-ws", "--no-tls"]
