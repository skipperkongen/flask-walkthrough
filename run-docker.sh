#!/bin/sh
# https://ianlondon.github.io/blog/deploy-flask-docker-nginx/
echo 'Testing'
docker run -p 80:80 skipperkongen/flask-walkthrough
