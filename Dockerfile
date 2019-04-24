FROM circleci/ruby:2.4.1-node-browsers

RUN bundle install
RUN npm install

ENTRYPOINT ["danger"]
