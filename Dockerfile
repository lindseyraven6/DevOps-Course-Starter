FROM python:3.8.6-buster

COPY * /

RUN pip install flask
RUN pip install poetry
ENTRYPOINT poetry run flask run --host 0.0.0.0 --port 5000

EXPOSE 5000