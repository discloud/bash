@echo off
if not "%1"=="am_admin" (powershell.exe start -verb runas '%0' am_admin & exit /b)

if not exist "C:\Discloud\" mkdir C:\Discloud

setx /M PATH "%PATH%;C:\Discloud"
echo [32m Install finished, open a new terminal and type discloud[0m
exit
