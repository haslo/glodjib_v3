source 'https://rubygems.org'

##########
# basics #
##########

# rails, db
gem 'rails', github: 'rails/rails'
gem 'pg'
gem 'devise', github: 'plataformatec/devise' # needed for rails 5 compatibility

# file handling
gem 'rubyzip'
gem 'carrierwave'
gem 'graphicsmagick'

# job & server management
gem 'delayed_job_active_record'
gem 'exception_notification' # configured in config/environments/production.rb

# social media
gem 'flickraw'
gem 'twitter'

##################
# asset pipeline #
##################

# view libraries
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'bootstrap-sass'
gem 'redcarpet'

# asset languages
gem 'jbuilder'
gem 'sass-rails'
gem 'uglifier'
gem 'haml'
gem 'coffee-rails'

#########################
# testing and dev tools #
#########################

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'timecop'
  gem 'database_cleaner'
end
group :development do
  gem 'web-console'
  gem 'pry'
  # gem 'spring'
  gem 'brakeman'
end
