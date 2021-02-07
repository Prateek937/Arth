FROM centos:latest
RUN yum install httpd -y
RUN yum install net-tools -y
RUN yum install php -y
RUN echo hello > "/var/www/html/index.html"
EXPOSE 80
ENV $op
ENTRYPOINT ["httpd"]
CMD ["-DEFORGROUND"]
