# Docker_Instancia

* [X] criar um conteiner
* [X] executar e salvar os comandos
* [ ] salvar um print do projeto rodando
* [ ] savar um print do codigo com CODESNAP
* [ ] postar tudo

# Passo-a-Passo do Que Foi Executado

## **1 terminal**

* Não testei no windows
* No Linux roda com `sudo` para ter acesso ao root

```
docker run -it ubuntu
```

###### Em caso de erro:

```terminal
sudo groupadd docker
newgrp docker
sudo usermod -aG docker $USER
```

### 1.1 Comandos de teste no ubuntu(docker)

```
apt update
apt install vim -y && apt upgrade -y
ls
```

Resultado do comando ls

`bin   dev  home  lib32  libx32  mnt  proc  run   srv  tmp  var boot  etc  lib   lib64  media   opt  root  sbin  sys  usr`

Sair do docker Ubuntu

```
exit
```

### 1.2 Comando listar conteiners

Rodando (EXEMPLO)

```
docker ps
```

`CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES`

Já executado

```
docker ps -a
```

`CONTAINER ID  IMAGE     COMMAND         CREATED               STATUS              `

`e2837da72630  ubuntu   "/bin/bash"     33 minutes ago   Exited (0) 15 minutes ago `

### 1.3 Iniciar e Parar Conteiners

Necessário o ID do conteiner baixado (EX: `CONTAINER ID: e2837da72630`)

```
docker start "CONTAINER ID"
```

```
docker stop "CONTAINER ID"
```

### 1.4 Nomes para Conteiners

`docker run -it --name "nome Para Conteiner" "nome do Conteirner A Ser Baixado"`

```terminal
docker run -it --name ubuntu_Exemplo ubuntu
```

`docker start ubuntu_exemplo`

### 1.5 Expondo portas

```
docker run -p 80:80 --name ubuntu_Exemplo ubuntu
```

80: Porta da Maquina
:80 Porta da Aplicação

### 1.6 Docker Logs para ver historico de ações do conteiner

`docker logs "Id ou Nome do conteiner"`

### 1.7 Comando "RM" para remocção de Conteiner

```
docker rm "nome ou id do conteiner"
```

## 2 Criando Dockerfile

### 2.1 criado arquivo "dockerfile" sem extensão pelo VSCODE

### 2.2 Projeto node

```
npm init -y
```

### 2.3 Projeto React

```
npx create-react-app my-app
cd my-app
npm start
```

`http://localhost:3000`

### 2.4 Comandos para dockerfile

```
FROM node

WORKDIR /usr/src/app

COPY my-app/public .

COPY my-app/src .

COPY my-app/package.json .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]


```

### 2.5 Build Dockerfile

```
docker build -t node_react_hlb .
```

### 2.6 Corrigindo Erros

Video de referencia: `https://www.youtube.com/watch?v=6p7lylJEjrU`

* Criei um outro projeto React chamado "docker_react" usando primeiro comando do topico 2.3 - `npx create-react-app docker_react`
* Copiei o dockerfile para a pasta criada "docker_react"
* Alterei o dockerfile para refletir o projeto corrigido

```
FROM node

WORKDIR /docker_react

COPY package.json  .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
```

## 3 Criando docker-compose

`https://youtu.be/6p7lylJEjrU?t=456`

### 3.1 Criamos o arquivo docker compose

`docker-compose.yaml`

Estruturado da seguinte maneira:

```
version: 1.0.0
services:
  docker_react:
    build: 
      context: ./docker_react
    ports:
      - "3000:3000"
    container_name: docker_react
    volumes:
      - /docker_react:/docker_react
      - node_modules:/docker_react/node_modules
volumes:
  node_modules:

```

### 3.2 Criando o arquivo deploy

Criamos a pasta `bin` na raiz do projeto, contendo o arquivo `deploy.sh`

No terminal usaremos os comandos:

```
cd bin
```

`Docker_Instancia$ cd bin 
Docker_Instancia/bin$  `

```
chmod u+x deploy.sh
```

Em seguido editamos o deploy.sh

```
#!/bin/bash
cd ..
fileEnv="docker-compose.yaml"
echo "Deploying docker-compose.yaml"
docker-compose -f docker-compose.yaml -f $fileEnv up --build --no-deps -d

```

o comando final foi

```
./deploy.sh
```
