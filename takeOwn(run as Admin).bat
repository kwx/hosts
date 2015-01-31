takeown /f %windir%\System32\drivers\etc\* /R
icacls %windir%\System32\drivers\etc\* /t /grant:r everyone:f
