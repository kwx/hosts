#! /bin/sh
clear
#cat hosts.txt google.txt others.txt ads.txt > hosts
cat hosts.txt google.txt others.txt >> /etc/hosts
clear
echo "update google ok"
