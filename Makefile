# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaqlzim <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/18 09:29:57 by aaqlzim           #+#    #+#              #
#    Updated: 2021/10/18 09:30:05 by aaqlzim          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


include srcs/.env

up: build
	sudo sh -c "echo 127.0.0.1 ${DOMAIN_NAME} >> /etc/hosts"
	cd srcs && docker-compose up

run:
	cd srcs && docker-compose up

detach:
	cd srcs && docker-compose up -d

down:
	cd srcs && docker-compose down

remove:
	cd srcs && docker-compose down -v --rmi all

build:
	cd srcs && docker-compose build
