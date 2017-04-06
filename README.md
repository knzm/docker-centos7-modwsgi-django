# docker-centos7-modwsgi-django

This repo contains Dockerfiles for various Django versions running
under Apache + modwsgi on CentOS 7.

## Build

```
# ./build_all.sh
```

## Usage

To run (if port 8000 is available and open on your host):

```
# docker run -p 8000:80 -d <username>/centos7-modwsgi-django:<version>
```

## Test

```
# curl http://localhost:8000
```
