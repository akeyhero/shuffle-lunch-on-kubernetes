FROM ruby:2.5.1-alpine

RUN apk --update --no-cache add \
      build-base \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      postgresql-client \
      tzdata \
      yarn \
 && gem install bundler \
 && gem install nokogiri -- --use-system-libraries
