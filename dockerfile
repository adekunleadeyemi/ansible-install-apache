# This is to install Apache onto an environment
FROM ubuntu:latest

MAINTAINER Adekunle Adeyemi

RUN apt-get -y update && \
    apt-get install -y python-yaml python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools python-pkg-resources git python-pip
    apt-get install -y ansible

Copy roles /opt
Copy roles/templates/hosts /etc/ansible

EXPOSE 8080
