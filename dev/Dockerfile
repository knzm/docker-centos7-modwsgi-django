FROM knzm/centos7-modwsgi
MAINTAINER Nozomu Kaneko <nozom.kaneko@gmail.com>

RUN yum update -y && \
    yum install -y python-virtualenv && \
    yum install -y git sqlite && \
    yum clean all

RUN git clone https://github.com/django/django.git /root/django
