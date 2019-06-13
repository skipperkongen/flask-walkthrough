#!/bin/sh
# https://ianlondon.github.io/blog/deploy-flask-docker-nginx/
echo 'Testing'
pipenv lock -r > requirements.txt
docker build -t mytest .
rm requirements.txt
docker run -p 80:80 mytest
