source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

###############################################################
###################### Custom gems ############################

gem 'slim-rails'
gem 'devise', '~> 4.7', '>= 4.7.1'
gem 'jquery-rails'
gem 'bootstrap', '~> 4.3.1'
gem 'rails-js'
gem 'autoprefixer-rails'
gem 'aws-sdk-s3', require: false
gem 'cocoon'
gem 'file_validators'
gem 'mini_magick'
gem 'skim', '~> 0.10.0'
gem 'sprockets', '~> 3.7', '>= 3.7.2'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.1'
gem 'gon'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-facebook'
gem 'cancancan'
gem 'doorkeeper', '4.2.6'
gem 'active_model_serializers', '~> 0.10.7'
gem 'oj', '~> 3.6'
gem 'sidekiq', '5.0.5'
gem 'sinatra', require: false
gem 'whenever', require: false
gem 'mysql2'
gem 'thinking-sphinx'
gem 'mini_racer'

###############################################################
###############################################################

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '4.0.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'mini_racer'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'capistrano', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano-passenger', require: false
  gem 'capistrano-sidekiq', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'

  gem 'shoulda', '~> 3.5'
  gem 'shoulda-matchers', '~> 2.0'
  gem 'rails-controller-testing'
  gem 'launchy'
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
