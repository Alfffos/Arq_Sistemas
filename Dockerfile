FROM ubuntu:latest

USER root

RUN apt-get update && apt-get install -y apache2

COPY index.html /var/www/html

EXPOSE 80

#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]


CMD ["apache2ctl", "-D","FOREGROUND"]


