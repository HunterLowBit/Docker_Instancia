# Docker_Instancia

* [ ] criar um conteiner
* [ ] executar e salvar os comandos
* [ ] salvar um print do projeto rodando
* [ ] savar um print do codigo com CODESNAP
* [ ] postar tudo

# Passo-a-Passo do Que Foi Executado

## **1 terminal**

```
docker run -it ubuntu
```

###### Em caso de erro:

```
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

```
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
