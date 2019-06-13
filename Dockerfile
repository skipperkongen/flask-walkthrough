FROM python:3.7.3-alpine3.8

EXPOSE 8000

COPY ./app /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["gunicorn", "-w 4", "-b 0.0.0.0:8000",  "main:app"]
