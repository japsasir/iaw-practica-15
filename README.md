# iaw-practica-15
Instalación de WordPress usando contenedores Docker y Docker Compose.


> IES Celia Viñas (Almería) - Curso 2020/2021
Módulo: IAW - Implantación de Aplicaciones Web
Ciclo: CFGS Administración de Sistemas Informáticos en Red

**Introducción**
------------
En esta práctica tendremos que realizar la implantación de un sitio WordPress en Amazon Web Services (AWS) haciendo uso de contenedores Docker y la herramienta Docker Compose.

**Tareas a realizar**
------------

1. Crear una máquina virtual Amazon EC2.

2. Instalar y configurar Docker y Docker compose en la máquina virtual.

3. Crear un archivo docker-compose.yml para poder desplegar los servicios de WordPress, MySQL y phpMyAdmin. Deberá utilizar las imágenes oficiales de Docker Hub.

4. Buscar cuál es la dirección IP pública de su instancia en AWS y comprobar que puede acceder a los servicios de WordPress y phpMyAdmin desde una navegador web.


**1.2 Requisitos del archivo docker-compose.yml**
------------
**1.2.1 Networks**

Los servicios definidos en el archivo docker-compose.yml deberán usar dos redes:

    frontend-network
    backend-network

En la red frontend-network estarán los servicios:

    WordPress
    phpMyAdmin

Y en la red backend-network sólo estará el servicio:

    MySQL

Sólo los servicios que están en la red frontend-network expondrán sus puertos en el host. Por lo tanto, el servicio de MySQL no deberá estar accesible desde el host.

> (Utilizar dos políticas de seguridad, una front-end y otra back-end)

A continuación se muestra un diagrama con las redes y los servicios que tiene que crear:

**1.2.2 Docker restart policies**
Deberá utilizar alguna política de reinicio para que los contenedores se reinicien cada vez que se detengan de forma inesperada.

**1.2.3 Variables de entorno**
Deberá hacer uso de un archivo .env para almacenar todas las variables de entorno que necesite en el archivo docker-compose.yml.

**1.2.4 Orden en el que se inician los servicios**
Deberá indicar el orden en el que se deben iniciar los servicios con la opción depends_on. Se recomienda la lectura del artículo Control startup and shutdown order in Compose


**Archivos en el repositorio**
------------
1. **README.md** Documentación.


**Referencias**
------------
- Guía original para la práctica.
https://josejuansanchez.org/iaw/practica-15/index.html



**Editor Markdown**
------------
- Markdown editor.
https://markdown-editor.github.io/

