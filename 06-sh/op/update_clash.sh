#!/bin/bash

docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53
docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:adg-cn-3999-53-clash
docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-cndns-fast2
docker pull registry.cn-shenzhen.aliyuncs.com/jmglezhu/mydocker:smartdns-usdns-fast2

docker rm -f $(docker ps -aq)

/bin/bash /root/check_clash.sh
