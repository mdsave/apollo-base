FROM node:12.13.0-alpine
ENV PORT 4000

RUN apk update \
  && apk upgrade \
  && apk add bash curl python ruby-dev --no-cache --virtual build-dependencies build-base gcc 

RUN gem install aptible-cli:0.16.3 --no-rdoc --no-ri
RUN npm install -g pm2