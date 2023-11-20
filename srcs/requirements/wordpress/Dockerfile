FROM debian:bookworm

COPY tools/wordpress_setup.sh /wordpress_setup.sh

RUN	apt-get update -y && apt-get upgrade -y && \
	apt-get install -y php8.2 php-fpm php-mysql mariadb-client && \
	apt-get install -y curl && \
	chmod +x /wordpress_setup.sh

# EXPOSE 3306

CMD ["/wordpress_setup.sh"]