source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis'
# Use ActiveModel has_secure_password
gem 'bcrypt', platforms: :ruby

gem 'wdm', '>= 0.1.0' if Gem.win_platform?

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Social Stuff
gem 'acts_as_follower', github: 'tcocca/acts_as_follower', branch: 'master'
gem 'acts_as_votable'
gem 'acts_as_commentable'
gem 'public_activity'
gem 'will_paginate', '~> 3.1.0'
gem 'pusher'

# Private Pub
gem 'private_pub'
gem 'thin'

# Social Logins
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-steam'
gem 'omniauth-twitch'

# Gems for social interactions
gem 'carrierwave'

# Active Admin
gem 'devise'
gem 'devise_token_auth'
gem 'activeadmin', github: 'activeadmin'
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources'

# Legion stuff
gem 'groupify'

# Searching stuff
gem 'algoliasearch-rails'