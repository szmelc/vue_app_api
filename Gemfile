source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'

gem "activeadmin"
gem "active_admin_datetimepicker"
gem "active_admin_theme"
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'capistrano-rails', group: :development
gem "devise"
gem "grape"
gem "grape-active_model_serializers"
gem "grape-swagger"
gem "grape-swagger-rails"
gem "haml"
gem "jwt"
gem 'mini_magick', '~> 4.8'
gem 'puma', '~> 3.11'
gem 'rack-cors', :require => 'rack/cors'
gem 'redis', '~> 4.0'
gem "sidekiq"
gem "therubyracer"

group :development do
  gem "bullet"
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'lol_dba'
  gem "pry"
  gem 'pry-rails'
  gem "rubocop"
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.8'
  gem "rspec_junit_formatter"
end

group :test do
  gem 'shoulda-matchers', '4.0.0.rc1'
  gem 'rails-controller-testing' # If you are using Rails 5.x
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
