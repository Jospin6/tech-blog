#!/usr/bin/env ruby
# exit on error
set -o errexit

bundle install
./bin/rails assets:precompile
./bin/rails assets:clean