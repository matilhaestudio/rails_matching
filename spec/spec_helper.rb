require "bundler/setup"
require "rails_matching"
require "active_record"
require 'factory_girl_rails'
require_relative "support/factory_girl"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"
  load File.dirname(__FILE__) + '/schema.rb'
  require File.dirname(__FILE__) + '/models.rb'

end




