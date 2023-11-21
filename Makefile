NAME	= inception
VOLPATH	= /Users/$(USER)/dev/42/13-inception/volumes/

all : $(NAME)

$(NAME) :
#	open -a Docker
#	sleep 10;
	cd srcs && docker-compose up -d

stop:
	cd srcs && docker-compose stop

clean: stop
	cd srcs && docker-compose down

fclean: clean
	rm -rf $(VOLPATH)mariadb/*
	rm -rf $(VOLPATH)wordpress/*
	cd srcs && docker image rm srcs-wordpress srcs-mariadb srcs-nginx
#	pkill -SIGHUP -f /Applications/Docker.app 'docker serve'

prune:
	rm -rf $(VOLPATH)mariadb/*
	rm -rf $(VOLPATH)wordpress/*
	docker system prune -a -f
#	pkill -SIGHUP -f /Applications/Docker.app 'docker serve' 
