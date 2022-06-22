FROM centos:latest
MAINTAINER mayank.9756.kh@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/aj.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip az.zip
RUN cp -rvf aj/* .
RUN rm -rf aj aj.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
