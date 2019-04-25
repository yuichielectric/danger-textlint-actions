FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache git nodejs nodejs-npm
RUN npm install
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-textlint

ENTRYPOINT "danger"
CMD "--verbose"
