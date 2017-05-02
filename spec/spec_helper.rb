require "pry"
require "rspec"
require "virtus/matchers/rspec"
require "timecop"
require "bundler/setup"
require "abokifx_indexer"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
