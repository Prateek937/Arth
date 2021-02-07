FROM centos:latest
RUN yum install httpd -y
RUN yum install net-tools -y
RUN yum install php -y
COPY echo hello >  "/var/www/html/index.html"
EXPOSE 80
ENTRYPOINT ["httpd"]
CMD ["-DFOREGROUND"]
