@echo off
if not exist "discloud.txt" (
echo The discloud.txt configuration file was not found
goto :eof
)
setlocal EnableDelayedExpansion
< discloud.txt (
  set /p token=
  set /p url=
)
IF "%token%" == "" (
echo Your token has not been defined in the discloud.txt file
goto :eof
)
IF "%url%" == "" (
echo Your bot ID not defined in the discloud.txt file
goto :eof
)
:
IF exist app.zip (del app.zip)
IF "%~1" == "" (
del %cd%\discloud.txt
powershell.exe Compress-Archive -Path '%cd%\*.*' -DestinationPath "app.zip"
(
echo !token!
echo !url!
)>%cd%\discloud.txt
curl -H "api-token:%token%"  -F "file=@app.zip" https://discloud.app/status/bot/%url%/commit
del app.zip
goto :eof
)
IF exist %1 (
del %cd%\discloud.txt
powershell.exe Compress-Archive -Path '%cd%\%1' -DestinationPath "app.zip"
(
echo !token!
echo !url!
)>%cd%\discloud.txt
curl -H "api-token:%token%"  -F "file=@app.zip" https://discloud.app/status/bot/%url%/commit
del app.zip
goto :eof
) ELSE (
  echo The folder %1 does not exist
Goto :eof
)
