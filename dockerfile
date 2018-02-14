# This is to install Apache onto an environment
FROM ubuntu:latest

MAINTAINER Adekunle Adeyemi

RUN apt-get -y update && \
    apt-get install -y python-yaml python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools python-pkg-resources git python-pip && \
    apt-get install -y ansible

COPY hello-world.html /opt
COPY ansible.cfg /opt
COPY hosts /opt
COPY apache.yml /opt
COPY docker-entrypoint.sh /opt

EXPOSE 8080

ENTRYPOINT ["/opt/docker-entrypoint.sh"]
