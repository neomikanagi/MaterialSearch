# 使用官方的 Alpine 作为基础镜像
FROM alpine:latest

# 安装 cockpit 的依赖项
RUN apk update && \
    apk add --no-cache cockpit ws sudo dbus shadow

# 创建一个用户，以防 Cockpit 需要一个非 root 用户运行
RUN adduser -D cockpit && echo "cockpit:cockpit" | chpasswd && adduser cockpit wheel

# 启动 Cockpit Web 服务
CMD ["cockpit-ws", "--no-tls"]
