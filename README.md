# Тестовый проект

В основе 2 контейнера: Apache (mod_php) и MySQL.

make нужно запускать из текущей директории проекта, чтобы корректно формировались пути к файлам.

Контейнер приложения билдился на основе [php](https://hub.docker.com/_/php/), а точнее php:7.4.33-apache-bullseye. В папке DockerHub докерфайл и php скрипт.

При старте контейнера приложения номер порта назначается динамически.

Тестовый дамп testdump.sql для MySQL выгружен/сформирован с помощью [adminer](https://hub.docker.com/_/adminer).

## Деплой проекта

```
make install
```

## Удаление

```
make uninstall
```

## Скейлинг сервиса приложения

```
make scale APP_QUANTITY=3
```
