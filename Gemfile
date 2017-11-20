# frozen_string_literal: true
ruby "2.3.4"
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.3'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.6', '>= 3.6.1'
  gem "factory_girl_rails"

end

group :test do
  gem 'ffaker'
  gem 'rspec-its'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'awesome_print', '~> 1.8'
gem 'rubocop', '~> 0.50.0', require: false
gem 'haml-rails', '~> 1.0'
gem 'rails_admin', '~> 1.2'
gem 'devise', '~> 4.3'
gem 'simple_form', '~> 3.5'
gem 'annotate'
gem 'select2-rails', '~> 4.0', '>= 4.0.3'
gem 'chartkick', '~> 2.2', '>= 2.2.4'
gem 'awesome_print', '~> 1.8'
gem 'rolify'
gem "pundit"
gem 'aasm'
gem 'kaminari', '~> 1.0', '>= 1.0.1'
gem 'bootstrap-kaminari-views', '~> 0.0.5'
