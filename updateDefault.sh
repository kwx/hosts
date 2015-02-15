#! /bin/sh
clear
#cat hosts.txt google.txt others.txt ads.txt > hosts
cat hosts.txt >> /etc/hosts
clear
echo "update to default ok"
