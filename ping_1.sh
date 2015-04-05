#!/bin/sh 
# Ping网段所有IP 
# 2012/02/05 
ip="180.201.19." 
for i in `seq 1 254` 
do 
ping -c 1 $ip$i | grep -q 'ttl=' && echo "$ip$i yes"|| echo "$ip$i no" 
#yes正常，no主机不存在或不正常 
done 
