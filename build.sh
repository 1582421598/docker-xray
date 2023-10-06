#!/bin/bash
BASE_DIR=$(realpath $(dirname "$0"))
mkdir "$BASE_DIR/Internet"
cd "$BASE_DIR/Internet"
wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip
unzip Xray-linux-64.zip -d xray
sudo docker build -f ../Dockerfile -t xray-core:latest .
sudo docker run -p 11111:11111 -p 22222:22222 --name xray --volume "$BASE_DIR/Internet/xray:/app/download/xray-core" -d xray-core:latest