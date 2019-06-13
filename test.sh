#!/bin/sh
echo 'Testing'
pipenv lock -r > app/requirements.txt
docker build -t mytest .
rm app/requirements.txt
docker run -p 5000:5000 mytest
