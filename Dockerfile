FROM circleci/ruby:2.4.1-node-browsers


RUN mkdir /github/workspace/.bundle
RUN echo 'BUNDLE_SILENCE_ROOT_WARNING: "1"' > /github/workspace/.bundle/config
RUN bundle install
RUN npm install

ENTRYPOINT ["danger"]
