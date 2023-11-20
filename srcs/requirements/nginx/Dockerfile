# Use the official Debian base image
FROM debian:bookworm

# Install Nginx
RUN apt-get update && apt-get upgrade && \
    apt-get install -y nginx && \
	apt-get install openssl -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=CH/ST=Vaud/L=Lausanne/O=42/OU=student/CN=kpawlows.42.fr/"

COPY conf/kpawlows.42.fr /etc/nginx/sites-available/default

# COPY tools/index.html /var/www/html/indexou.html

# EXPOSE 8080:443

CMD ["nginx", "-g", "daemon off;"]