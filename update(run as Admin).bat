@echo off
cls
copy /y hosts.txt 	%windir%\System32\drivers\etc\hosts
copy /b %windir%\System32\drivers\etc\hosts + google.txt  %windir%\System32\drivers\etc\hosts
copy /b %windir%\System32\drivers\etc\hosts + others.txt  %windir%\System32\drivers\etc\hosts
copy /b %windir%\System32\drivers\etc\hosts + ads.txt %windir%\System32\drivers\etc\hosts
ipconfig /flushdns
echo "it successed if you see 4 file copyed, else you need check if you run this bash as administrator, or killed by local security"
@pause
