#!/bin/bash

normal(){
   count=`docker ps | grep adg-cn-3999-53-clash -c`
   if [ 0 -ne $count ]; then
      docker rm -f adg
   fi
   count=`docker ps | grep adg-cn-3999-53 -c`
   if [ 0 -eq $count ]; then
     docker run -d --net=host --name=adg --restart=always registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53
   fi
}

clash(){
   count=`docker ps | grep adg-cn-3999-53-clash -c`
   if [ 0 -eq $count ]; then
      count=`docker ps | grep adg-cn-3999-53 -c`
      if [ 0 -ne $count ]; then
        docker rm -f adg
      fi
      docker run -d --net=host --name=adg --restart=always registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53-clash
   fi
}

check_cndns(){
  count=`docker ps | grep cndns1 -c`
  if [ 0 -eq $count ]; then
  	docker run -d --net=host --restart=always --name cndns1 registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-cndns-fast2
  fi
}

check_usdns(){
  count=`docker ps | grep usdns1 -c`
  if [ 0 -eq $count ]; then
    docker run -d --net=host --restart=always --name usdns1 registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-usdns-fast2
  fi
}

check_network(){
  curl -s --connect-timeout 5 127.0.0.1:9090/providers/proxies >/dev/null
  if [ 0 -eq $? ]; then
      curl -s --connect-timeout 5 http://www.gstatic.com/generate_204 >/dev/null
      if [ 0 -eq $? ]; then
        clash
      else
        normal
      fi
  else
    normal
  fi
}

check_cndns
check_usdns

for (( i = 0; i < 3; i++ )); do
    check_network
done
