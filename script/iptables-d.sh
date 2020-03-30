#!/bin/sh

iptables -t nat -D V2RAY -d 0.0.0.0 -j RETURN
iptables -t nat -D V2RAY -d 127.0.0.0 -j RETURN
iptables -t nat -D V2RAY -d 165.227.51.176 -j RETURN
iptables -t nat -D V2RAY -d 0/8 -j RETURN
iptables -t nat -D V2RAY -d 127/8 -j RETURN
iptables -t nat -D V2RAY -d 10/8 -j RETURN
iptables -t nat -D V2RAY -d 169.254/16 -j RETURN
iptables -t nat -D V2RAY -d 172.16/12 -j RETURN
iptables -t nat -D V2RAY -d 192.168/16 -j RETURN
iptables -t nat -D V2RAY -d 224/4 -j RETURN
iptables -t nat -D V2RAY -d 240/4 -j RETURN
iptables -t nat -D V2RAY -d 192.168.31.0/24 -j RETURN
iptables -t nat -D V2RAY -p tcp -m set --match-set china dst -j RETURN
# From lans redirect to Dokodemo-door's local port
iptables -t nat -D V2RAY -s 192.168.31.0/24 -p tcp -j REDIRECT --to-ports 1099
iptables -t nat -D PREROUTING -p tcp -j V2RAY
iptables -t nat -F V2RAY
