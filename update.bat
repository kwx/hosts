@echo off
@ipconfig /flushdns

echo "basic hosts"
copy /y hosts C:\Windows\system32\drivers\etc\hosts

echo "google IP"
while read Line
do
	echo $Line >> C:\Windows\system32\drivers\etc\hosts
	echo $Line
done < google

echo "apple facebook twitter youtube dropbox and others ip"
while read Line
do
echo $Line >> C:\Windows\system32\drivers\etc\hosts
echo $Line
done < others

echo "block ads"
while read Line
do
echo $Line >> C:\Windows\system32\drivers\etc\hosts
echo $Line
done < ads