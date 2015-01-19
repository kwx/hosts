#! /bin/sh
clear
cat hosts.txt google.txt others.txt ads.txt > hosts
mv hosts /etc
dscacheutil -flushcache
/etc/init.d/nscd restart
clear
echo "update ok"
