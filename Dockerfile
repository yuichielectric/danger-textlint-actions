FROM ruby:2.6.3-alpine

# LABEL fields for GitHub Actions
LABEL "com.github.actions.name"="danger-textlint-actions"
LABEL "com.github.actions.description"="Automate revirew comments to PR by textlint"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="gray-dark"
LABEL "repository"="https://github.com/yuichielectric/danger-textlint-actions"
LABEL "homepage"="https://github.com/yuichielectric/danger-textlint-actions"
LABEL "maintainer"="Yuichi Tanaka (https://github.com/yuichielectric)"

RUN apk add --update --no-cache git nodejs
RUN gem install danger -v '>= 5.10.3'
RUN gem install danger-textlint

ENTRYPOINT "danger"
CMD "--verbose"
