# Makefile

build:
	cd srcs && docker-compose build

up:
	cd srcs && docker-compose up

down:
	cd srcs && docker-compose down

