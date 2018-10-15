#!/bin/bash

clear

docker run -it \
            --rm \
            -e MYSQL_DATABASE=development \
            -e MYSQL_USER=development \
            -e MYSQL_PASSWORD=development \
            -v `pwd`/mount/mysql/data:/var/lib/mysql \
            bmxmale/docker-mysql-data-initializer:5.7
