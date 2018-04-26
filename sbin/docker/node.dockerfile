FROM node:latest
MAINTAINER João Ribeiro <joaosoft@gmail.com>

ARG PROJECT_NAME=go-money

# install nodemon
RUN npm install nodemon -g

# add source code
ADD ./app /vue/src/$PROJECT_NAME/
WORKDIR /vue/src/$PROJECT_NAME/

# install dependencies
RUN npm install

# build the app
RUN npm build

# copy configuration
ADD ./app/config /etc/$PROJECT_NAME

EXPOSE 8080