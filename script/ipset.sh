#!/bin/sh
ipset -N china hash:net
ipset flush china
for iprange in `cat china_ip_list.txt`; do
    ipset -A china $iprange
done
