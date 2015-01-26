@echo off
cls
copy /y	hosts.txt 	hosts
copy /b	hosts	+	google.txt	hosts
copy /b	hosts	+	others.txt	hosts
copy /b	hosts	+	ads.txt		hosts
cls
copy /y	hosts	%windir%\System32\drivers\etc\hosts
ipconfig /flushdns

echo "if you see the l file copy failed,you may need check if you run this bash as administrator,or move the hosts to %windir%\System32\drivers\etc\ handly"

@pause
