# Discloud Bash
 Interface básica de linha de comando da Discloud.app para Windows
 
 
 
 
 
## 📋 Pré-requisitos do Sistema Operacional
 
Se você estiver no `Windows 10, versão 1803 ou posterior`, seu sistema operacional já é completamente compatível com a Discloud Bash
 
## 🚀 Começando
Para realizar a instalação no Windows baixe o programa `install.bat` e execute na sua maquina.
Após o processo ser finalizado a interface de linha de comando da DisCloud já está disponível em seu terminal.
 
Você podera ter acesso a ela digitando apenas o comando `discloud`
 
 
 
## 📦 Requisitos
 
Para que a Discloud Bash funcione você precisa criar um arquivo chamado `discloud.txt` onde colocara o token de acesso a api da discloud e o ID do seu bot
> É importante que respeite o padrão em que os dados são colocado do arquivo txt
> 

![image](https://user-images.githubusercontent.com/36576303/147795407-e3464469-33c8-4c26-b0cf-a029dba24491.png)
![image](https://user-images.githubusercontent.com/36576303/147795563-6043ccc1-a8bf-4eb2-a8f7-ee13daeec4f0.png)


 
## 🛠️ Comandos
 
No momento só temos o comando `commit` disponível em nossa aplicação.
 
- Estrutura do comando:
 
> Aqui os <argumentos> são opcionais, já os [comandos] são obrigatórios.
 
```
discloud [comando] <argumento>
```
> No caso do commit os <argumentos> seriam o nome da pasta ou arquivo, porém você pode deixar vazio para o commit enviar os arquivo da raiz onde o comando é executado
 
 
## ⚙️ Exemplos de uso
 
```
discloud commit nomDaPasta

discloud commit
```










Desenvolvido com ❤️ por [Pedro Ricardo](https://discloud.app) 😊
