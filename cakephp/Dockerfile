FROM ubuntu
LABEL maintainer="Masato <masato.m.1995.0116@gmail.com>"
WORKDIR /var/www/html

ENV DEBIAN_FRONTEND=noninteractive

# RUN: docker buildするときに実行される
RUN apt-get  update
RUN apt-get -y install php php-cgi libapache2-mod-php php-common php-intl php-pear php-mbstring php-mysql php-sqlite3 sqlite3
RUN apt-get -y install apt-utils
RUN apt-get -y install composer

RUN echo  "ServerName localhost" | tee /etc/apache2/conf-available/my_server.conf

RUN a2enconf my_server
RUN a2enmod rewrite

COPY ./jackdoe-web.conf /etc/apache2/sites-available
COPY ./apache2.conf /etc/apache2

RUN a2dissite 000-default.conf
RUN a2ensite jackdoe-web.conf

RUN composer create-project --prefer-dist cakephp/app jackdoe-web

COPY ./config /var/www/html/jackdoe-web/config

# service apache2 start 
# CMD: docker runするときに実行される
CMD ["apachectl", "-D", "FOREGROUND"]


