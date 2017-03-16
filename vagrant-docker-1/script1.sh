#!/usr/bin/env bash
docker run --name mysql-kita -e MYSQL_ROOT_PASSWORD=cloud! -d mysql

echo mysql-kita is running........
