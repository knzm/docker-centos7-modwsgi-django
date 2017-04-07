#!/bin/sh

releases="
dev
0.96
1.0
1.1
1.2
1.3
1.4
1.5
1.6
1.7
1.8
1.9
1.10
1.11
"

if [ $# -gt 0 ]; then
  releases="$@"
fi

for rel in $releases; do
  ver=$(grep "ENV DJANGO_VERSION" $rel/Dockerfile | cut -f3 -d ' ')
  docker build -t knzm/centos7-modwsgi-django:${ver:-$rel} $rel
done
