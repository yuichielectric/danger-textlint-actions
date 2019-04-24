FROM circleci/ruby:2.4.1-node-browsers


RUN mkdir ~/.bundle
RUN echo 'BUNDLE_SILENCE_ROOT_WARNING: "1"' > ~/.bundle/config
RUN bundle install
RUN npm install

ENTRYPOINT ["danger"]
