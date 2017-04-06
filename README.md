# docker-centos7-modwsgi-django

This repo contains Dockerfiles for various Django versions running
under Apache + modwsgi on CentOS 7.

## Django version history

Version |Date       |Notes
--------|-----------|----------
0.90    |2005-11-16 |
0.91    |2006-01-11 |"new-admin"
0.95    |2006-07-29 |"magic removal"
0.96    |2007-03-23 |"newforms", testing tools
1.0     |2008-09-03 |API stability, decoupled admin, unicode
1.1     |2009-07-29 |Aggregates, transaction based tests
1.2     |2010-05-17 |Multiple db connections, CSRF, model validation
1.3     |2011-03-23 |Class based views, staticfiles
1.4     |2012-03-23 |Timezones, in browser testing, app templates. Long-term support release
1.5     |2013-02-26 |Python 3 Support, configurable user model
1.6     |2013-11-06 |Dedicated to Malcolm Tredinnick, db transaction management, connection pooling.
1.7     |2014-09-02 |Migrations, application loading and configuration.
1.8     |2015-04-01 |Native support for multiple template engines. Long-term support release, supported until at least April 2018
1.9     |2015-12-01 |Automatic password validation. New styling for admin interface.
1.10    |2016-10-01 |Full text search for PostgreSQL. New-style middleware.
1.11    |2017-04-04 |Last version to support Python 2.7. Long-term support release, supported until at least April 2020

https://en.wikipedia.org/wiki/Django_(web_framework)#Version_history

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
