# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
source 'https://rubygems.org'

gem 'bootstrap-sass', '>= 3.4.1'
gem 'coffee-rails', '4.2.2'
gem 'jbuilder', '2.7.0'
gem 'jquery-rails', '4.3.1'
gem 'puma', '3.9.1'
gem 'rails', '5.1.6'
gem 'sass-rails', '5.0.6'
gem 'turbolinks', '5.0.1'
gem 'uglifier', '3.2.0'

group :development, :test do
  gem 'byebug', '9.0.6', platform: :mri
  gem 'sqlite3', '1.3.13'
end

group :development do
  gem 'listen', '3.1.5'
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'web-console', '3.5.1'
end

group :test do
  gem 'guard', '2.13.0'
  gem 'guard-minitest', '2.4.4'
  gem 'minitest', '5.10.3'
  gem 'minitest-reporters', '1.1.14'
  gem 'rails-controller-testing', '1.0.2'
end

group :production do
  gem 'pg', '0.20.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
