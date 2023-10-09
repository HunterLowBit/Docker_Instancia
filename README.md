# Docker_Instancia

* [ ] criar um conteiner
* [ ] executar e salvar os comandos
* [ ] salvar um print do projeto rodando
* [ ] savar um print do codigo com CODESNAP
* [ ] postar tudo

# Passo-a-Passo do Que Foi Executado

## **1 terminal**

```terminal
docker run -it ubuntu
```

###### Em caso de erro:

```terminal
sudo groupadd docker
newgrp docker
sudo usermod -aG docker $USER
```

### 1.1 Comandos de teste no ubuntu(docker)

```terminal_conteiner
apt update
apt install vim -y && apt upgrade -y
ls
```

Resultado do comando ls

`bin   dev  home  lib32  libx32  mnt  proc  run   srv  tmp  var boot  etc  lib   lib64  media   opt  root  sbin  sys  usr`

Sair do docker Ubuntu

```Terminal_Conteiner
exit
```

### 1.2 Comando listar conteiners

Rodando (EXEMPLO)

```terminal
docker ps
```

`CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES`

Já executado

```terminal
docker ps -a
```

`CONTAINER ID  IMAGE     COMMAND         CREATED               STATUS              `

`e2837da72630  ubuntu   "/bin/bash"     33 minutes ago   Exited (0) 15 minutes ago `

### 1.3 Iniciar e Parar Conteiners

Necessário o ID do conteiner baixado (EX: `CONTAINER ID: e2837da72630`)

```terminal
docker start "CONTAINER ID"
```

```terminal
docker stop "CONTAINER ID"
```

### 1.4 Nomes para Conteiners

`docker run -it --name "nome Para Conteiner" "nome do Conteirner A Ser Baixado"`

```terminal
docker run -it --name ubuntu_Exemplo ubuntu
```

`docker start ubuntu_exemplo`

### 1.5 Expondo portas

```terminal
docker run -p 80:80 --name ubuntu_Exemplo ubuntu
```

80: Porta da Maquina
:80 Porta da Aplicação

### 1.6 Docker Logs para ver historico de ações do conteiner

`docker logs "Id ou Nome do conteiner"`

### 1.7 Comando "RM" para remocção de Conteiner

```terminal
docker rm "nome ou id do conteiner"
```

## 2 Criando Dockerfile

### 2.1 criado arquivo "dockerfile" sem extensão pelo VSCODE

### 2.2 Projeto node

```node
npm init -y
```

### 2.3 Projeto React

```node
npx create-react-app my-app
cd my-app
npm start
```

`http://localhost:3000`

### 2.4 Comandos para dockerfile

```dockerfile
FROM node

WORKDIR /usr/src/app

COPY public/ .

COPY src/ .

COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
```

### 2.5 Build Dockerfile

```Terminal
docker build -t node_react_hlb .
```

###### Deu erro de permissão negada por recarregar o VSCODE, utilizando passo 1 deve resolver.
