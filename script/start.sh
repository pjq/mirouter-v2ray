#!/bin/sh
# author: pengjianqing@gmail.com
# date: 2020/3/30

V2RAY_PATH="/userdisk/data/v2ray_new"
V2RAY_PATH_SCRIPT="/userdisk/data/v2ray_new/script"

echo "cd ${V2RAY_PATH_SCRIPT}"
cd ${V2RAY_PATH_SCRIPT} 

echo "sh ipset.sh"
sh ipset.sh

echo "sh iptables-d.sh"
sh iptables-d.sh
echo "sh iptables.sh"
sh iptables.sh
echo "${V2RAY_PATH}/v2ray --config v2ray_mirouter.json"
${V2RAY_PATH}/v2ray --config v2ray_mirouter.json
