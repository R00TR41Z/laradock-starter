#!/usr/bin/env bash

init(){
    if [[ -z "$1" ]]; then
        echo -e "\033[31m[-] Por favor, insere o nome do teu projeto [-]"
        exit 1
    fi

    echo -e "\033[34m[+] Clonando o repositório do Laravel... [+]"

    git clone https://github.com/laravel/laravel "./$1" || {
        echo -e "\033[31m[-] Falha ao clonar o repositório do Laravel [-]"
        exit 1
    }

    echo -e "\033[32m[+] Repositório do Laravel clonado com sucesso! [+]"

    echo -e "\033[34m[+] Removendo o diretório .github... [+]"

    rm -rf "./$1/.github" || {
        echo -e "\033[31m[-] Falha ao remover o diretório .github [-]"
        exit 1
    }

    echo -e "\033[32m[+] Diretório .git removido com sucesso! [+]"


    echo -e "\033[34m[+] Clonando o repositório do Laradock... [+]"

    git clone https://github.com/R00TR41Z/laradock "/tmp/$1" || {
        echo -e "\033[31m[-] Falha ao clonar o repositório do Laradock [-]"
        exit 1
    }

    echo -e "\033[32m[+] Repositório do Laradock clonado com sucesso! [+]"

    echo -e "\033[34m[+] Copiando os arquivos do Docker... [+]"

    cp -r "/tmp/$1/docker" "/tmp/$1/docker-compose.yml" "/tmp/$1/Dockerfile" "/tmp/$1/.gitignore" "/tmp/$1/*.sh" "./$1" || {
        echo -e "\033[31m[-] Falha ao copiar os arquivos do Docker [-]"
        exit 1
    }

    echo -e "\033[32m[+] Arquivos do Docker copiados com sucesso! [+]"

    echo -e "\033[34m[+] Copiando o arquivo .env.example... [+]"

    cp "./$1/.env.example" "./$1/.env" || {
        echo -e "\033[31m[-] Falha ao copiar o arquivo .env.example [-]"
        exit 1
    }

    echo -e "\033[32m[+] Arquivo .env.example copiado com sucesso! [+]"

    echo -e "\033[32m[+] Projeto Laravel inicializado com sucesso! [+]"

    rm -rf "/tmp/$1"
}

init "$@"
