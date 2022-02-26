@echo off
chcp 65001 > C:\Discloud\log
:----------------------------------------------------------------------:
:
:
:
:______ _     _____ _                 _ 
:|  _  (_)   /  __ \ |               | |
:| | | |_ ___| /  \/ | ___  _   _  __| |
:| | | | / __| |   | |/ _ \| | | |/ _` |
:| |/ /| \__ \ \__/\ | (_) | |_| | (_| |
:|___/ |_|___/\____/_|\___/ \__,_|\__,_|
:                   script develop by PR                                    
:
:                                      
:---------------------------------------------------------------------=-:

SET Foo=%1
SET uf=%2
chcp 65001 > C:\Discloud\log
:::::::::::::::::::::::::::::::::::::::::
if not exist "discloud.txt" (
echo [31m The discloud.txt configuration file was not found[0m
exit
) 
setlocal EnableDelayedExpansion
< %cd%\discloud.txt (
  SET /p token=
  SET /p url=
)

if "%token%" == "" (
echo Your token was not defined in the discloud.txt file
goto :eof
)
if "%url%" == "" (
echo [31m Your bot id not defined in discloud.txt file[0m
goto :eof
)
:::::::::::::::::::::::::::::::::::
if "%Foo%"=="commit" (
:
IF exist app.zip (del app.zip)
IF "%uf%" == "" (
del %cd%\discloud.txt  
powershell.exe Compress-Archive -Path '%cd%\*.*' -DestinationPath "%cd%\app.zip"
(
echo !token!
echo !url!
)>%cd%\discloud.txt
curl -H "api-token:%token%"  -F "file=@app.zip" https://discloud.app/status/bot/%url%/commit
del app.zip
goto :eof
)
IF exist %uf%/ (
del %cd%\discloud.txt
powershell.exe Compress-Archive -Path '%cd%\%uf%' -DestinationPath "app.zip"
(
echo !token!
echo !url!
)>%cd%\discloud.txt
curl -H "api-token:%token%"  -F "file=@app.zip" https://discloud.app/status/bot/%url%/commit
del app.zip
goto :eof
) ELSE (
  echo [31m The folder %uf% does not exist[0m
goto :eof
)
exit
)

:::      _   _                _                       _                             
:::     | | (_)              | |                     | |                            
:::   __| |  _   ___    ___  | |   ___    _   _    __| |       __ _   _ __    _ __  
:::  / _` | | | / __|  / __| | |  / _ \  | | | |  / _` |      / _` | | '_ \  | '_ \ 
::: | (_| | | | \__ \ | (__  | | | (_) | | |_| | | (_| |  _  | (_| | | |_) | | |_) |
:::  \__,_| |_| |___/  \___| |_|  \___/   \__,_|  \__,_| (_)  \__,_| | .__/  | .__/ 
:::                                                                  | |     | |    
:::                                                                  |_|     |_|                                                                                                               
:::------------------------------------------------------------------------------------
:::| USO:                                                                              |
:::| ->   discloud [command] <argument>                                               |
:::|                                                                                   |
:::| Commands:                                                                         |
:::| ->   commit <filename|empty>  |   Upload files to your app on discloud            |
:::|                                                                                   |
:::| Examples:                                                                         |
:::| ->   discloud commit myBot        |   discloud commit                             |
:::------------------------------------------------------------------------------------
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
exit
