FROM debian:bookworm

COPY tools/mariadb_setup.sh /mariadb_setup.sh

RUN apt-get update -y && apt-get upgrade -y && \
	apt-get install mariadb-server -y && \
	chmod +x mariadb_setup.sh

COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# EXPOSE 3306

CMD	["/mariadb_setup.sh"]