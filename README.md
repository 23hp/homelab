# 创建外部 Docker 网络
podman network create traefik-public

# 启动服务
systemctl --user enable --now podman.socket

# 检查 Socket 路径（通常在 /run/user/1000/podman/podman.sock）
podman info | grep -i socket

# 配置 .env 文件
在项目根目录下创建 .env，把所有的“变量”都藏在这里：
```Ini, TOML
    # 隐私信息与公共配置
    DOMAIN_NAME=yourdomain.com
    TRAEFIK_CERTIFICATESRESOLVERS_LETSENCRYPT_ACME_EMAIL=your-email@example.com

```

# 准备秘密文件 (Secrets Files)

在 vaultwarden-stack 目录下创建以下文件（确保不要有换行符或空格）：

    cf_api_token.txt: 写入你的 Cloudflare API Token。

    admin_token.txt: 写入你生成的管理员面板强密码。

    acme_email.txt: 写入你的邮箱地址。

