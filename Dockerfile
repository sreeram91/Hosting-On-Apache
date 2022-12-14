FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y
RUN apt install apache2 -y
COPY ./build /var/www/html
EXPOSE 80
CMD [ "apachectl", "-D", "FOREGROUND"]