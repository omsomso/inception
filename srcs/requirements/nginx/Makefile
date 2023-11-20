

all : build run

build :
	docker build -t nginx .

run :
	docker run -it -d -p 7000:443 --name nginx nginx

stop :
	docker container stop nginx

fclean : stop
	docker container rm nginx
	docker image rm nginx