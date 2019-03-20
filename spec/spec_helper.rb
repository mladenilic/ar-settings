ENV['RAILS_ENV'] ||= 'test'

require 'bundler/setup'
Bundler.setup

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require 'rails_app/config/environment'
require 'settings'

RSpec.configure do |config|
  config.before(:context) { ActiveRecord::MigrationContext.new(Rails.root.join('db', 'migrate')).migrate }
  config.after(:context) { ActiveRecord::MigrationContext.new(Rails.root.join('db', 'migrate')).rollback }
end