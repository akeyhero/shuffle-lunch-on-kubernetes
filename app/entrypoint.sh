#!/bin/ash -exuC

bundle install
yarn install
bundle exec rails db:create db:migrate
#bundle exec rails assets:precompile
bin/webpack
bundle exec rails server -b 0.0.0.0
