#!/bin/bash

service mariadb start;

sleep 1;

mariadb -e "CREATE DATABASE IF NOT EXISTS $DB_NAME ;"
mariadb -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PWD' ;"
mariadb -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' ;"
mariadb -e "ALTER USER '$DB_USER' IDENTIFIED BY '$DB_PWD' ;"
mariadb -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$DB_PWD shutdown

exec mysqld_safe