# laradock-starter

# Passo


### Baixar o script

```sh
wget -c https://raw.githubusercontent.com/R00TR41Z/laradock-starter/main/start.sh
```
### Dar permissões
```sh
chmod 777 start.sh 
```

### Executar o script indicando do projeto
```sh
./start.sh livewire
```

### Configurar o arquivo .env

```ini
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=root

REDIS_CLIENT=phpredis
REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379
```

### Acessar a pasta do projeto e dar permissões a todos os scripts sh
```sh
chmod 777 *.sh
```
### inicializando o projeto

```sh
./up.sh
```

### Accesso do terminal do container php

```sh
./terminal.sh
```
