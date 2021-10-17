include srcs/.env

up: build
	sudo sh -c "echo 127.0.0.1 ${DOMAIN_NAME} >> /etc/hosts"
	cd srcs && docker-compose up

detach:
	cd srcs && docker-compose up -d

down:
	cd srcs && docker-compose down

build:
	cd srcs && docker-compose build

