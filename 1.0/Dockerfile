FROM knzm/centos7-modwsgi-django:dev
MAINTAINER Nozomu Kaneko <nozom.kaneko@gmail.com>

ENV DJANGO_VERSION 1.0.x
ENV DJANGO_BRANCH stable/$DJANGO_VERSION

RUN virtualenv-2.7 /env
RUN cd /root/django && \
    git checkout $DJANGO_BRANCH && \
    /env/bin/pip install . && \
    rm -rf /root/django
RUN mkdir /app
RUN cd /app && /env/bin/django-admin.py startproject mysite

COPY wsgi.py /app/mysite/wsgi.py

RUN rm /etc/httpd/conf.d/*.conf
COPY mysite.conf /etc/httpd/conf.d/mysite.conf

RUN /env/bin/django-admin.py --version
