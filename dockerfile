# This is to install Apache onto an environment
FROM ubuntu:latest

MAINTAINER Adekunle Adeyemi

RUN apt-get -y update && \
    apt-get install -y python-yaml python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools python-pkg-resources git python-pip
    apt-get install -y ansible

Copy roles /opt
Copy roles/templates/hosts /etc/ansible


#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 8080

#CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]