# [API ADVENTURE WORKS TAREA 1]
# Chedrick Daniel Uzaga López, 2021144175

## Actualización de programas y sistema.

Ejecutamos los siguientes comandos para actualizar:

sudo apt update

sudo apt upgrade -y

## Instalación de Docker.

Después de una larga espera de actualizaciones se procedió con la instalación de Docker en Kali para colocar dentro de un contenedor SQL server.

sudo apt install docker.io -y

Para iniciar docker cuando iniciamos Kali

sudo systemctl enable docker --now

Para ejecutar docker sin sudo hacemos:

sudo docker ...

Luego:

sudo usermod -aG docker $USER

y finalmente:

sudo reboot

## SQL Server en docker
Para extraer la imagen de SQL Server 2022 ejecutamos:

docker pull mcr.microsoft.com/mssql/server:2022-latest

Y para comprobar que la instalación fue correcta hacemos

docker images

Debería aparecer algo como 

REPOSITORY                       TAG           IMAGE ID       CREATED       SIZE
mcr.microsoft.com/mssql/server   2022-latest   5b0916c7af8c   3 weeks ago   1.69GB


Ejecutamos los siguientes comandos:

docker run -e "ACCEPT_EULA=Y" \
-e "MSSQL_SA_PASSWORD=UnaContraParaTuBase" \
-p 1433:1433 \
--name unNombreParaTuImagen \
-d \
mcr.microsoft.com/mssql/server:2022-latest

Una vez hecho esto podemos iniciar con las credenciales

docker exec -it elNombreDeTuDocker /opt/mssql-tools18/bin/sqlcmd \
-S localhost \
-U sa \
-P 'LaContraQuePusiste' \
-C

Finalmente restauramos la base de datos de adventureworks y podemos trabajar en lo que son las consultas.





### Estado del proyecto:
### Enlace del video:
Recordar que el video debe ser público para ser visto por el profesor
