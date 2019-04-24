FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache git
RUN gem install danger -v '>= 5.10.3'

ENTRYPOINT "danger"
CMD "--verbose"
