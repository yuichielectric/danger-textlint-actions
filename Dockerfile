FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache nodejs nodejs-npm
RUN gem install danger -v '>= 5.10.3'
RUN npm install

ENTRYPOINT "danger"
CMD "--verbose"
