FROM nginx:1.21-alpine

RUN mkdir -p /var/log/nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY ./docker/node_chat_server.conf /etc/nginx/conf.d
