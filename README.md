# Docker_Instancia

* [ ] criar um conteiner
* [ ] executar e salvar os comandos
* [ ] salvar um print do projeto rodando
* [ ] savar um print do codigo com CODESNAP
* [ ] postar tudo

# Passo-a-Passo do Que Foi Executado

## **1 - terminal**

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
apt install vim -y && apt install upgrade -y
ls
```

Resultado do comando ls

`bin   dev  home  lib32  libx32  mnt  proc  run   srv  tmp  var boot  etc  lib   lib64  media   opt  root  sbin  sys  usr`

Sair do docker Ubuntu

```
exit
```
