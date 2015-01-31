@echo off
copy /y hosts.txt %windir%\System32\drivers\etc\hosts	
ipconfig /flushdns
echo "it successed if you see 1 file copyed, else you need check if you run this bash as administrator, or killed by local security"
pause
