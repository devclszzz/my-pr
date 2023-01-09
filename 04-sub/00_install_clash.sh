#!/bin/bash

wget --timeout 5 https://sub.mingle666.top/07-app/clash-tun.tar.gz

if [[ 0 -ne $? ]]; then
	wget --timeout 5 https://cdn.jsdelivr.net/gh/devclszzz/my-pr/04-sub/clash-tun.tar.gz
fi
if [[ 0 -ne $? ]]; then
	wget --timeout 5 https://raw.githubusercontent.com/devclszzz/my-pr/main/04-sub/clash-tun.tar.gz
fi

tar -zxvf clash-tun.tar.gz

pushd clash-tun

bash deploy_clash.sh

popd

rm -rf clash-tun*
rm -f 00_install_clash.sh