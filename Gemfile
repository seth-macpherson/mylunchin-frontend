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
gem 'nokogiri', '>= 1.4.7'
gem 'omniauth', '>= 0.2.6'
# gem 'friendly_id'
# gem 'carmen'          # used as a replacement for country_select and state_select and related forks
gem 'rails3-generators'
gem 'formtastic', :git => "git://github.com/justinfrench/formtastic.git", :branch => '2-0-stable'
# gem 'spree'

gem 'activeadmin', :git => "git://github.com/seth-macpherson/active_admin.git"
gem "meta_search",    '>= 1.1.0.pre'


group :test, :development do
  
  gem 'sqlite3'

  gem 'rspec'
  gem 'spork', '0.8.5'
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
  # gem 'tabs_on_rails'
  # gem 'feedzirra'
end