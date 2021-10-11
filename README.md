# Inception
This project aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine


nginx:
  build: ./requirements/nginx/
  ports:
    - "443:443"
  env_file:
    - .env

mariadb:
  build: ./requirements/mariadb/
  ports:
    - "3306:3306"
  env_file:
    - .env