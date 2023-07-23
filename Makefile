SRCS = ./srcs
up:
	sudo docker-compose -f $(SRCS)/docker-compose.yml  up -d --build

down:
	sudo docker-compose -f $(SRCS)/docker-compose.yml down
mkdir:
	@sudo mkdir -p /home/mmakboub/data
	@sudo mkdir -p /home/mmakboub/data/Wordpress
	@sudo mkdir -p /home/mmakboub/data/DB

ps:
	@sudo docker ps
img:
	@sudo docker images
rmi:
	sudo docker rm -f $$(docker ps -aq)
	sudo docker rmi -f $$(docker images -aq)
vm:
	sudo docker volume rm v_mariadb
	sudo docker volume rm v_wp