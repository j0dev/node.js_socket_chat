FROM node:16

USER root

RUN mkdir -p /var/www/node_chat_server
ENV APP_HOME=/var/www/node_chat_server

WORKDIR $APP_HOME

COPY ../package*.json $APP_HOME/

RUN npm install
RUN npm install -g nodemon

COPY . .

CMD ["nodemon", "start"]