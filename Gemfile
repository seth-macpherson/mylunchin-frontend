source 'http://rubygems.org'

gem 'rails', '3.1.1'

# This order matters!
# gem 'compass'
gem 'haml'
gem 'haml-rails', :group => :development
# LET'S NOT GO HERE -> gem 'html5-boilerplate'
gem 'jquery-rails'
gem 'coffee-script'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

# provide simple configuration settings mechanism
gem 'settingslogic'

gem 'execjs'

gem 'devise'
gem 'omniauth', '>= 0.2.6'
gem 'friendly_id'
gem 'carmen'          # used as a replacement for country_select and state_select and related forks
gem 'formtastic'
gem 'tabs_on_rails'

group :test, :development do
  
  gem 'sqlite3'

  # essential => see http://benscheirman.com/2011/04/using-guard-spork-with-mongoid-devise
  gem 'rspec'
  gem 'spork'
  gem 'rb-fsevent'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'guard-pow'
  gem 'cucumber-rails'
  gem 'rspec-rails'
  gem 'rspec-instafail'

  # db, factory & code coverage
  gem 'factory_girl_rails'
  gem 'simplecov', '>= 0.4.2', :require => false, :group => :test
  
  # Niceties
  gem 'growl'
  gem 'faker'
  gem 'turn', :require => false

end

group :production do
  gem 'pg'
end