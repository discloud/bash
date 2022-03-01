*Ver em [Português](https://github.com/discloud/bash/)* 

# Discloud Bash ![](https://cdn.discordapp.com/attachments/919212099912212540/926483349554470962/pragit.svg)
 Basic command line interface for Windows. **So you can use the `Visual Studio Code` terminal to update your bot on Discloud**
 
 _
## 📦 Operating System Prerequisites
 
If you are using `PowerShell` on `Windows 10, version 1803 or later`, your operating system is already fully compatible with Discloud Bash

--- 
## 📋 Arquivo de configuração

For Discloud Bash to work you need to create a file called `discloud.txt` in your application's directory, where you will add the `Token` to access the discloud api and your `bot ID`.
> It is important to respect the standard in which the data is placed from the txt file

Remembering that this token is from the `Discloud API` and not from your Discord application
-- 
![image](https://user-images.githubusercontent.com/36576303/147795407-e3464469-33c8-4c26-b0cf-a029dba24491.png)
![image](https://user-images.githubusercontent.com/36576303/147795563-6043ccc1-a8bf-4eb2-a8f7-ee13daeec4f0.png)
 ---
## 🚀 Starting

There are 2 ways to use Discloud Bash
--
#### First
The fastest way to use DisCloud Bash is to open your [VScode](https://code.visualstudio.com/) in your Bot folder and create a file called `commit.bat`, then paste this [content here](https://raw.githubusercontent.com/discloud/bash/main/system/windows/commit-en.bat) and save.

> Once you have done that you can run the command using `./commit.bat` or `./commit.bat FolderName` in your [VScode](https://code.visualstudio.com) terminal and the files will be sent to the bot that has the data in [`discloud.txt`](https://github.com/discloud/bash/blob/main/README.md#-arquivo-de-configura%C3%A7%C3%A3o)

![script](https://user-images.githubusercontent.com/36576303/147828311-f4a86c11-be56-4f93-af59-a5bb9c863167.gif)

 
## 🛠️ Configuring Path on Windows
--
#### Second
Now if you want to install the Script globally on your windows the process will be a little different:
First download the `install-en.bat` program and run it on your machine.
After the process, access the `C:\Discloud` folder, create a file called `discloud.bat` and put this [code here](https://raw.githubusercontent.com/discloud/bash/main/system/windows/discloud-en.bat) inside and save correctly.

![image](https://user-images.githubusercontent.com/36576303/147798522-14db0dcf-de9d-4785-be9a-686abb0893d7.png)
![image](https://user-images.githubusercontent.com/36576303/147798223-2eb14070-c1b0-4594-b9cc-e2b37caf1e96.png)
![image](https://user-images.githubusercontent.com/36576303/147798270-0b341168-c41c-4fdf-9fae-58f0757d0d55.png)
![image](https://user-images.githubusercontent.com/36576303/147798369-8404cd75-5b9a-4bbe-a2e5-ae55bc81223f.png)
 
At the moment we only have the `commit` command available in our application.
 
- Command structure:
 
> Here `<arguments>` are optional, while `[commands]` are mandatory.
 
```
discloud [command] <argument>
```
> In the case of the commit, the `<arguments>` would be the name of the folder or file, but you can leave it empty for the commit to send the files from the root where the command is executed
 
 
## ⚙️ Examples of use
 
```
discloud commit FolderName

discloud commit
```










Developed with ❤️ by [Pedro Ricardo](https://youtube.com/pedroricardor) 😊
