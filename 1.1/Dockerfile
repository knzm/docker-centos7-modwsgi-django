FROM knzm/centos7-modwsgi
MAINTAINER Nozomu Kaneko <nozom.kaneko@gmail.com>

RUN yum update -y && \
    yum install -y python-virtualenv && \
    yum install -y git sqlite && \
    yum clean all

ENV DJANGO_VERSION 1.1.4

RUN virtualenv-2.7 /env
RUN /env/bin/pip install django==$DJANGO_VERSION
RUN mkdir /app
RUN cd /app && /env/bin/django-admin.py startproject mysite

COPY wsgi.py /app/mysite/wsgi.py

RUN rm /etc/httpd/conf.d/*.conf
COPY mysite.conf /etc/httpd/conf.d/mysite.conf

RUN /env/bin/django-admin.py --version
