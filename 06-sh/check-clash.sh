#!/bin/bash

curl --connect-timeout 1 www.baidu.com
if [ 0 -ne $? ]; then
    docker rm -f adg
    docker run -d --net=host --name=adg --restart=always registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53-2
fi

curl --connect-timeout 1 127.0.0.1:9090/providers/proxies
if [ 0 -eq $? ]; then
    count=`docker ps | grep adg-cn-3999-53-clash -c`
    if [ 0 -eq $count ]; then
        docker rm -f adg
        docker run -d --net=host --name=adg --restart=always registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53-clash
    fi
fi