FROM ruby:2.6.3-alpine

RUN apk add --no-cache nodejs
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-checkstyle_format
RUN npm install

ENTRYPOINT "danger"
CMD "--verbose"
