FROM centos:7

MAINTAINER ss
RUN yum install httpd php -y

COPY index.php /var/www/html
EXPOSE 80
ENTRYPOINT ["httpd","-DFOREGROUND"]

