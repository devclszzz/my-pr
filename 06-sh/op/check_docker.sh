#!/bin/bash

docker ps >/dev/null

if [ 0 -ne $? ];then
	/etc/init.d/dockerd restart
fi


docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53
docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53-clash
docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-cndns-fast2
docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-usdns-fast2

docker image prune -f