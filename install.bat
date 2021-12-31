@echo off
if not "%1"=="am_admin" (powershell.exe start -verb runas '%0' am_admin & exit /b)

if not exist "C:\Discloud\" mkdir C:\Discloud

for /f "usebackq delims=" %%a in (`powershell.exe -Command "(new-object net.webclient).DownloadString('https://raw.githubusercontent.com/discloud/bash/main/system/windows/discloud.cmd')"`) do set variable=%%a

(echo %variable%)>C:\Discloud\discloud.bat

:setx /M PATH "%PATH%;C:\Discloud"
echo [32m Install finalizado, abra um novo terminal e digite discloud[0m
exit
