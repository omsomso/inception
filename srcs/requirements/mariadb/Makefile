

all : build run

build :
	docker build -t mariadb .

run :
	docker run -it -d -p 7000:3306 --name mariadb mariadb

stop :
	docker container stop mariadb

fclean : stop
	docker container rm mariadb
	docker image rm mariadb