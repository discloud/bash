# Discloud Bash ![](https://cdn.discordapp.com/attachments/919212099912212540/926483349554470962/pragit.svg)
 Interface básica de linha de comando para Windows. **Podendo assim utilizar o terminal do  `Visual Studio Code` para atualizar o seu bot na Discloud**
 
 
 _
## 📦 Pré-requisitos do Sistema Operacional
 
Se você estiver usando o  `PowerShell` no `Windows 10, versão 1803 ou posterior`, seu sistema operacional já é completamente compatível com a Discloud Bash

--- 
## 📋 Arquivo de configuração
 
Para que a Discloud Bash funcione você precisa criar um arquivo chamado `discloud.txt` no diretorio da sua aplicaçao, onde adicionará o  `Token` de acesso a api da discloud  e o    `ID do seu bot`.
> É importante que respeite o padrão em que os dados são colocado do arquivo txt

Lembrando que esse token é da `API da Discloud` e não da sua aplicação Discord
-- 
![image](https://user-images.githubusercontent.com/36576303/147795407-e3464469-33c8-4c26-b0cf-a029dba24491.png)
![image](https://user-images.githubusercontent.com/36576303/147795563-6043ccc1-a8bf-4eb2-a8f7-ee13daeec4f0.png)
 ---
## 🚀 Começando

Existem 2 formas de utilizar a Discloud Bash 
--
#### Primeira
A maneira mais rápida de poder utilizar a DisCloud Bash é abrindo o seu [VScode](https://code.visualstudio.com) na pasta do seu Bot e criando um arquivo chamado `commit.bat`, em seguida cole dentro dele esse [conteúdo aqui](https://raw.githubusercontent.com/discloud/bash/main/system/windows/commit.bat) e salve.

> Depois de ter feito isso pode executar o comando utilizando  `./commit.bat` ou `./commit.bat nomeDaPasta` no terminal do seu [VScode](https://code.visualstudio.com) que os arquivos serão enviados para o bot que tem os dados no `discloud.txt`

![script](https://user-images.githubusercontent.com/36576303/147828311-f4a86c11-be56-4f93-af59-a5bb9c863167.gif)

#### Segunda
Agora se quiser instalar o Script de forma nativa no seu windows o processo será um pouco diferente:
Primeiro baixe o programa `install.bat` e execute na sua maquina.
Após o processo acesse a pasta `C:\Discloud`, crie um arquivo chamdo `discloud.bat` e coloque este [código aqui](https://raw.githubusercontent.com/discloud/bash/main/system/windows/discloud.bat) dentro e salve corretamente.

![image](https://user-images.githubusercontent.com/36576303/147798522-14db0dcf-de9d-4785-be9a-686abb0893d7.png)
![image](https://user-images.githubusercontent.com/36576303/147798223-2eb14070-c1b0-4594-b9cc-e2b37caf1e96.png)
![image](https://user-images.githubusercontent.com/36576303/147798270-0b341168-c41c-4fdf-9fae-58f0757d0d55.png)
![image](https://user-images.githubusercontent.com/36576303/147798369-8404cd75-5b9a-4bbe-a2e5-ae55bc81223f.png)
 
## 🛠️ Comandos
 
No momento só temos o comando `commit` disponível em nossa aplicação.
 
- Estrutura do comando:
 
> Aqui os <argumentos> são opcionais, já os [comandos] são obrigatórios.
 
```
discloud [comando] <argumento>
```
> No caso do commit os `<argumentos>` seriam o nome da pasta ou arquivo, porém você pode deixar vazio para o commit enviar os arquivo da raiz onde o comando é executado
 
 
## ⚙️ Exemplos de uso
 
```
discloud commit nomDaPasta

discloud commit
```










Desenvolvido com ❤️ por [Pedro Ricardo](https://youtube.com/pedroricardor) 😊
