ENV["RACK_ENV"] = "test"
require ::File.expand_path("../../config/environment", __FILE__)
require "minitest/mock"
require "minitest/pride"
require "mocha/mini_test"

::Dir.glob(::Fathom.root.join("test/support/*.rb")).each do |f|
  require f
end

class ::ActiveSupport::TestCase
  ::ActiveSupport::TestCase.test_order = :sorted
  # Add more helper methods to be used by all tests here...
end

::Minitest.autorun
