FROM python:3.7

ARG DEBUG

ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH /root/api

RUN apt update && apt install -y netcat

COPY ./docker/api/entrypoint.sh /root
COPY ./api/Pipfile /root/api/
RUN chmod +x /root/entrypoint.sh

WORKDIR /root/api

RUN pip install pipenv
RUN pipenv install --system --sequential --skip-lock ${DEBUG:+ --dev}
