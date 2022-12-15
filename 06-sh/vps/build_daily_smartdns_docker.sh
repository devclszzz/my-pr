#!/usr/bin/env bash


[ ! -d smartdns ] && git clone https://github.com/pymumu/smartdns.git

if [ -d smartdns ];then
  cd smartdns
  git pull

  wget -O smartdns-cn-fast2.conf https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/smartdns-cn-fast2.conf
  if [ 0 -ne $? ];then
    curl --connect-timeout 5 -o smartdns-cn-fast2.conf  https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/smartdns-cn-fast2.conf
  fi

  wget -O smartdns-us-fast2.conf https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/smartdns-us-fast2.conf
  if [ 0 -ne $? ];then
    curl --connect-timeout 5 -o smartdns-us-fast2.conf  https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/smartdns-us-fast2.conf
  fi

  wget -O Dockerfile-cn-fast2 https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/Dockerfile-cn-fast2
  if [ 0 -ne $? ];then
    curl --connect-timeout 5 -o Dockerfile-cn-fast2 https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/Dockerfile-cn-fast2
  fi

  wget -O Dockerfile-us-fast2 https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/Dockerfile-us-fast2
  if [ 0 -ne $? ];then
    curl --connect-timeout 5 -o Dockerfile-us-fast2 https://cdn.jsdelivr.net/gh/devclszzz/my-pr/02-conf/Dockerfile-us-fast2
  fi

  docker build -t docker:smartdns-cndns-fast2 -f Dockerfile-cn-fast2 .
  docker tag docker:smartdns-cndns-fast2 registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-cndns-fast2
  docker push registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-cndns-fast2

  docker build -t docker:smartdns-usdns-fast2 -f Dockerfile-us-fast2 .
  docker tag docker:smartdns-usdns-fast2 registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-usdns-fast2
  docker push registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-usdns-fast2

fi
