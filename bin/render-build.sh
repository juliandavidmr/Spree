#!/usr/bin/env bash
# Note: any build commands added/changed in this script should also be update to render-build-legacy-frontend.sh

# exit on error
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rake spree_sample:load
