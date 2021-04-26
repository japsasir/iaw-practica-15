#!/bin/bash
set -x

# Actualizamos 
 apt update -y

# Instalamos docker y docker-compose
 apt install docker -y
 apt install docker-compose

# Habilitamos docker y arrancamos el servicio
 systemctl enable docker
 systemctl start docker

# Lanzamos las diferentes imagenes. Es necesario usar '-d' para que no se abra la terminal.

docker run -d
