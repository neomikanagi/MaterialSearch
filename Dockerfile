# 使用官方 Debian 作为基础镜像
FROM debian:latest

# 更新系统并安装 Cockpit 和其他依赖
RUN apt-get update && \
    apt-get install -y cockpit sudo dbus

# 替代 systemd，直接启动 cockpit
CMD ["cockpit-ws", "--no-tls"]
