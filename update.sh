#! /bin/sh
echo "basic hosts"
cp hosts /etc

echo "google IP"
while read Line
do
	echo $Line >> /etc/hosts
	echo $Line
done < google

echo "apple facebook twitter youtube dropbox and others ip"
while read Line
do
echo $Line >> /etc/hosts
echo $Line
done < others

echo "block ads"
while read Line
do
echo $Line >> /etc/hosts
echo $Line
done < ads