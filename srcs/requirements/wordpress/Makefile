

all : build run

build :
	docker build -t wordpress .

run :
	docker run -it -d -p 7000:9000 --name wordpress wordpress

stop :
	docker container stop wordpress

fclean : stop
	docker container rm wordpress
	docker image rm wordpress