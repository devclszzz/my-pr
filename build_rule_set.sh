#!/bin/bash

[ ! -d /myapp ] && mkdir /myapp

cd /myapp

[ ! -d /myapp/my-pr ] && git clone git@github.com:devclszzz/my-pr.git

cd /myapp/my-pr/

git pull

wget -O /myapp/my-pr/03-geoip/geoip-cn2.mmdb https://github.com/Hackl0us/GeoIP2-CN/raw/release/Country.mmdb
wget -O /myapp/my-pr/03-geoip/Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
wget -O /myapp/my-pr/03-geoip/geoip.dat https://raw.githubusercontent.com/Loyalsoldier/geoip/release/geoip.dat
wget -O /myapp/my-pr/03-geoip/geosite.dat  https://github.com/v2fly/domain-list-community/releases/latest/download/dlc.dat


curl -o /myapp/my-pr/01-rule/privacy.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Privacy/Privacy_Classical.yaml

curl -o /myapp/my-pr/01-rule/zhihu-ad.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/ZhihuAds/ZhihuAds.yaml

curl -o /myapp/my-pr/01-rule/reject-ad.yaml  https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Advertising/Advertising_Classical.yaml

curl -o /myapp/my-pr/01-rule/direct-ad.yaml  https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Direct/Direct.yaml

curl -o /myapp/my-pr/01-rule/direct-ad2.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AdGuardSDNSFilter/Direct/Direct.yaml

curl -o /myapp/my-pr/01-rule/nf.yaml  https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Netflix/Netflix.yaml

curl -o /myapp/my-pr/01-rule/tiktok.yaml  https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/TikTok/TikTok.yaml

curl -o /myapp/my-pr/01-rule/telegram.yaml  https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Telegram/Telegram.yaml

curl -o /myapp/my-pr/01-rule/iphone.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Apple/Apple.yaml

curl -o /myapp/my-pr/01-rule/pt.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/PrivateTracker/PrivateTracker.yaml

curl -o /myapp/my-pr/01-rule/ximalaya.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Himalaya/Himalaya.yaml

curl -o /myapp/my-pr/01-rule/kuaishou.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/KuaiShou/KuaiShou.yaml

curl -o /myapp/my-pr/01-rule/microsoft.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/Microsoft/Microsoft.yaml

curl -o /myapp/my-pr/01-rule/adLite.yaml https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AdvertisingLite/AdvertisingLite_Classical.yaml




curl -o /myapp/my-pr/01-rule/reject.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/reject.txt
curl -o /myapp/my-pr/01-rule/gfw.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/gfw.txt
curl -o /myapp/my-pr/01-rule/greatfire.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/greatfire.txt
curl -o /myapp/my-pr/01-rule/proxy.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/proxy.txt
curl -o /myapp/my-pr/01-rule/lancidr.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/lancidr.txt
curl -o /myapp/my-pr/01-rule/private.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/private.txt
curl -o /myapp/my-pr/01-rule/apple.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/apple.txt
curl -o /myapp/my-pr/01-rule/icloud.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/icloud.txt
curl -o /myapp/my-pr/01-rule/cncidr.yaml https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/cncidr.txt


/bin/cp -r /myapp/my-pr /dev_tools

git add --all

git commit -m 'update' 

git push origin main

