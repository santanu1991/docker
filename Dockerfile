FROM centos:latest
RUN yum install epel-release -y
RUN yum install httpd -y
WORKDIR /var/www/html
COPY index.html .
CMD /usr/sbin/httpd -DFOREGROUND
