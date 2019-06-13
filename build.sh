#!/bin/sh
# docker login
pipenv lock -r > requirements.txt
docker build -t skipperkongen/flask-walkthrough .
docker push skipperkongen/flask-walkthrough
