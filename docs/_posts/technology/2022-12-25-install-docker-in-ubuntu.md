---
title: Docker在ubuntu下的安装配置说明
tags: 技术经验
categories: notes technology
status: 积压
priority: 1
layout: post
directory: _posts/technology
publish: 2022-12-25-install-docker-in-ubuntu
---

# Docker在ubuntu下的安装配置说明

## 安装docker

### 卸载可能存在的旧版本

```bash
sudo apt-get remove docker docker-engine docker.io containerd runc
```

### 设置存储库

1. 更新`apt`包索引，并安装包以允许`apt`通过 HTTPS 使用存储库：

```bash
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

2. 添加`Docker`的官方`GPG`密钥：

```bash
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

3. 使用以下命令设置存储库：

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

4. 更新包索引

```bash
sudo apt-get update
```

### 安装最新版本

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

测试安装是否成功

```bash
sudo docker run hello-world
```

## 配置镜像加速器

1. 打开`docker`配置文件

```bash
sudo vi /etc/docker/daemon.json
```

2. 添加以下内容，并保存

```bash
{
   "registry-mirrors": [
       "https://mirror.ccs.tencentyun.com"
  ]
}
```

3. 重启`Docker`

```bash
sudo systemctl restart docker
```

## 配置普通用户运行`docker`命令

1. 添加`docker`用户组

```bash
sudo groupadd docker
```

2. 添加用户到`docker`用户组中

```bash
sudo usermod -aG docker ubuntu
```

3. 退出然后重新登录

```bash
exit
```

4. 检查用户是否已经加入了`docker`用户组

```bash
groups
```
显示如下类似内容
```
ubuntu adm cdrom sudo dip plugdev lxd docker
```

5. 更改用户组

```bash
sudo chown root:docker /var/run/docker.sock
```

6. 查看是否可用

```bash
docker ps
```
显示如下类似内容
```
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

