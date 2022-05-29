FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9-slim

COPY ./docker/app/requirements.txt /app/requirements.txt

RUN apt-get update && \
  apt-get install -y gcc libmariadb-dev && \
  pip install --no-cache-dir --upgrade -r /app/requirements.txt

## for develop
RUN rm /app/main.py

## for release
# COPY ./docker/app/src/main.py /app/app/main.py
