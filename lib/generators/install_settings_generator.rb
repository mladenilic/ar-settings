require 'rails/generators'
require 'rails/generators/migration'

class InstallSettingsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  desc 'Generate migration for settings records'
  source_root File.expand_path('templates', __dir__)

  def create_migration_file
    migration_template 'install.rb.erb', 'db/migrate/settings_migration.rb'
  end

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      '%.3d' % (current_migration_number(dirname) + 1)
    end
  end
end
