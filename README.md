# 一键部署 MongoDB 单节点副本集

```bash
git clone https://github.com/krau/mongodb-rs-compose
sudo chmod +x start.sh
sudo ./start.sh
```

## 用户名和密码

修改 docker-compose.yml 文件中的环境变量

- `MONGO_INITDB_ROOT_USERNAME`: MongoDB root username
- `MONGO_INITDB_ROOT_PASSWORD`: MongoDB root password

然后修改 healthcheck 中相应的用户名和密码

## 外部网络访问

修改 docker-compose.yml 中 healthcheck.test 内初始化副本集的 Host(host.docker.internal) 为宿主机 IP

> 未使用传输层加密，仅供测试使用