FROM hasholding/alpine-base
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"
VOLUME /shared 
RUN apk add --update --no-cache libressl php5-fpm php5-bz2 php5-curl php5-iconv php5-json php5-mysqli php5-pdo_mysql php5-pdo_pgsql php5-pgsql php5-soap php5-xml php5-zip php5-zlib
RUN sed -i '/^listen =/c listen = 9000' /etc/php5/php-fpm.conf
EXPOSE 9000
CMD ["php-fpm5", "--allow-to-run-as-root", "--nodaemonize"]
