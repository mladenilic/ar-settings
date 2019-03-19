require 'bundler/setup'
Bundler.setup

ENV['RAILS_ENV'] ||= 'test'

require 'rails_app/config/environment'
require 'settings'

RSpec.configure do |config|
  config.before(:suite) { ActiveRecord::MigrationContext.new(Rails.root.join('db', 'migrate')).migrate }
  config.after(:suite) { ActiveRecord::MigrationContext.new(Rails.root.join('db', 'migrate')).rollback }
end