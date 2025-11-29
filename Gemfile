source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.7'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.10'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.6.2'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.4.4'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.14.1'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 5.4.1'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
gem 'cloudinary', '~> 2.4.0'
gem 'devise', '~> 4.8'

gem 'autoprefixer-rails', '10.2.5'
gem 'simple_form', '~> 5.4.0'
gem 'pg_search', '~> 2.3.7'
gem 'dragula-rails', '~> 3.7.0'
gem 'pundit', '~> 2.5.2'

group :development, :test do
  gem 'pry-byebug', '~> 3.11.0'
  gem 'pry-rails', '~> 0.3.11'
  gem 'dotenv-rails', '~> 3.1.8'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 4.4.0'
  gem 'spring-watcher-listen', '~> 2.1.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.40.0'
  gem 'selenium-webdriver', '~> 4.38.0'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers', '~> 5.2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 2.0.6', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
