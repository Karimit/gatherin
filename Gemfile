source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

eval_gemfile("shared_dependencies.rb")

gem "bootsnap", ">= 1.4.2", require: false
gem "nokogiri", ">= 1.10.8"
gem "puma", ">= 4.3.3"
gem "rack-attack", "~> 6.2", ">= 6.2.2"
gem "rack-cors", "~> 1.1"

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :development, :test do
  gem "dotenv-rails", require: "dotenv/rails-now"
  gem "graphiql-rails", "~> 1.7"
  gem "rubocop", "~> 0.78", require: false
end

# Domain gems & engines - Order matters!
# rubocop:disable Bundler/OrderedGems
gem "gatherin_core",  path: "engines/core"
gem "gatherin_auth",  path: "engines/auth"
gem "gatherin_admin", path: "engines/admin"
# rubocop:enable Bundler/OrderedGems
