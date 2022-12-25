#!/bin/sh

# Documentation -> https://hub.docker.com/_/mysql

docker context use sandbox
docker volume create mysql-8

docker run -d --rm \
	--name mysql-8 \
  -p 3306:3306 \
  -v data-mysql-8:/var/lib/mysql \
	-e MYSQL_USER=admin \
	-e MYSQL_PASSWORD=admin \
	-e MYSQL_ROOT_PASSWORD=root \
	mysql:8
