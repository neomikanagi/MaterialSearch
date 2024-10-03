# 使用最新的 Arch Linux 作为基础镜像
FROM archlinux:latest

# 更新系统并安装 cockpit
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm cockpit && \
    systemctl enable --now cockpit.socket

# 清理缓存以减少镜像大小
RUN pacman -Scc --noconfirm

# 设置默认命令
CMD ["/usr/bin/bash"]
