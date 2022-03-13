[![Unit Tests & Lint](https://github.com/karchevilya/sheldule/actions/workflows/main.yml/badge.svg)](https://github.com/karchevilya/sheldule/actions/workflows/main.yml)
# Online schedule

## Require
* Ruby 3.0.3
### PostgreSQL installation
 * sudo apt install postgresql
 * sudo gem install pg
 * sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"
### Set up
 * gem install bundler
 * bundle install
 * bundle exec rake db:create
 * rails db:migrate
### Rspec
 * bundle exec rspec
### Rubocop
 * bundle exec rubocop
### Run
 * rails s

