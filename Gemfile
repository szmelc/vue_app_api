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

group :development do
  gem "bullet"
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'lol_dba'
  gem "rubocop"
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.8'
end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
