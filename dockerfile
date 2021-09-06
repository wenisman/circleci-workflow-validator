FROM node:current-alpine

RUN apk add --no-cache make gcc g++ python2

EXPOSE 8080

RUN mkdir -p /repo
WORKDIR /repo

COPY . /repo/

RUN npm i && npm run build

ENTRYPOINT [ "npm", "run", "serve"]
