require 'rubygems'
require 'spork'
 
Spork.prefork do
  ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path('../../config/environment', __FILE__)
  require 'rspec/rails'
  Rails.logger.level = 4    
  
  Dir[Rails.root.join('spec/support/**/*.rb')].each{|f| require f}
 
  RSpec.configure do |config|
    config.include Devise::TestHelpers, :type => :controller
    config.mock_with :rspec
    config.fixture_path = "#{Rails.root}/spec/fixtures"
    config.use_transactional_fixtures = true
    config.use_instantiated_fixtures  = false

    ActiveSupport::Dependencies.clear
  end
end
 
Spork.each_run do
  # initiate for each run
  require 'simplecov'
  SimpleCov.start 'rails'
  load "#{Rails.root}/config/routes.rb"
  Dir["#{Rails.root}/app/**/*.rb"].each {|f| load f}
end



