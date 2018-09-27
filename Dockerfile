FROM node:8.11

RUN npm i -g serve

ONBUILD COPY . /app

WORKDIR /app

CMD serve -n -c liara.json

EXPOSE 5000