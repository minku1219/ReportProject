FROM centos:latest
MAINTAINER mayank.9756.kh@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD index.html /var/www/html/
ADD app.js /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
