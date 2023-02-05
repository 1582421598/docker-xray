mkdir Internet
cd Internet
wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip
unzip Xray-linux-64.zip -d xray
sudo docker build -f ../Dockerfile -t xray-core:latest .
sudo docker run -p 80:80 -p 443:443 --name xray --volume ~/docker-xray/Internet/xray:/app/download/xray-core -d xray-core:latest