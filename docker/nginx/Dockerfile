FROM nginx:latest

RUN apt-get -y update
RUN apt-get -y install netcat

COPY docker/nginx/entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh
