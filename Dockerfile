FROM node:16-buster AS development

WORKDIR /app/src

RUN apt-get update

COPY ./src/package.json /app/src/

RUN yarn install

ENV HOST 0.0.0.0

CMD yarn dev
