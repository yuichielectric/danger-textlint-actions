FROM circleci/ruby:2.4.1-node-browsers

RUN apt-get update -qq && apt-get install -y build-essential p7zip unzip

RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-checkstyle_format
RUN npm install

ENTRYPOINT "danger"
CMD "--verbose"
