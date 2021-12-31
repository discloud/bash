@echo off
if not exist "discloud.txt" (
echo O arquivo de configuraçao discloud.txt nao foi encontrado
goto :eof
) 

setlocal EnableDelayedExpansion
< discloud.txt (
  set /p token=
  set /p url=
)
IF "%token%" == "" (
echo O seu token nao foi difinido no arquivo discloud.txt
goto :eof
)
IF "%url%" == "" (
echo ID do seu bot nao difinido no arquivo discloud.txt
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
IF exist %1/ (
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
  echo A pasta %1 nao existe
Goto :eof
)
