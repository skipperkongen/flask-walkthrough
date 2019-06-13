#!/bin/sh
echo 'Testing'
pipenv lock -r > app/requirements.txt
docker build -t mytest .
rm app/requirements.txt
docker run -p 8000:8000 mytest
