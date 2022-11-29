#!/bin/bash

if [ ! `command -v docker` ];then
  apt-get update

  apt-get install ca-certificates curl gnupg lsb-release -y

  [ ! -d /etc/apt/keyrings ] && mkdir -p /etc/apt/keyrings

  curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

  echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
  | tee /etc/apt/sources.list.d/docker.list > /dev/null

  apt-get update

  apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

  echo "success install docker..."

fi

if [ 0 -eq `docker ps | grep 56680 -c` ]; then

    docker run -d -p 56680:80 -v /dev_tools:/usr/share/nginx/html --name=nginx --restart=always nginx

    echo "success install docker nginx..."

fi

[ -f /myapp ] && mv /myapp /myapp.bak

[ ! -d /myapp ] && mkdir -p /myapp

[ ! `command -v wget` ] && apt install wget -y

wget -O /myapp/domain.cer https://raw.githubusercontent.com/devclszzz/my-pr/main/05-ca/mingle666.top.cer

wget -O /myapp/domain.key https://raw.githubusercontent.com/devclszzz/my-pr/main/05-ca/mingle666.top.key

wget -O /myapp/xray.zip https://raw.githubusercontent.com/devclszzz/my-pr/main/02-conf/xray.zip

[ ! `command -v unzip` ] && apt install unzip -y

[ ! -d /myapp/xray ] && unzip /myapp/xray.zip -d /myapp

chmod +x /myapp/xray/xray

cp /myapp/xray/xray.service /etc/systemd/system

systemctl enable xray

systemctl restart xray
