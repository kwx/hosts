@echo off
@ipconfig /flushdns
@copy /y hosts C:\Windows\system32\drivers\etc\hosts
@pause