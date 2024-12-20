#!/bin/bash

set -e

echo "###############################################"
echo "Step 1: 生成 keyfile..."
echo "###############################################"

chmod +x gen-keyfile.sh

./gen-keyfile.sh

echo "###############################################"
echo "Step 2: 构建自定义 Docker 镜像..."
echo "###############################################"

chmod +x custom-entrypoint.sh

docker compose build

echo "###############################################"
echo "Step 3: 启动 MongoDB 副本集..."
echo "###############################################"

docker compose up -d

echo "###############################################"
echo "MongoDB 副本集正在启动，请稍候..."
echo "您可以使用以下命令查看日志："
echo "docker compose logs -f"
echo "###############################################"