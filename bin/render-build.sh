#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
<<<<<<< HEAD
# bundle exec rake db:migrate
DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake db:migrate:reset
=======
bundle exec rake db:migrate
>>>>>>> a5389a08f5f6feb13c13a20b8c4969d31851ba4a
