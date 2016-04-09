require "rubygems"
require "erb"
require "yaml"
require "active_record"
require "active_support/all"
require "bundler/setup"

::Bundler.setup
::Bundler.require(*[:default, :development, :test])

::Dotenv.load

environment = ENV["RACK_ENV"] || "development"

db_config_path = File.join(__dir__, "database.yml")
db_config_result = ERB.new(File.read(db_config_path)).result
dbconfig = YAML.load(db_config_result)

::ActiveRecord::Base.establish_connection dbconfig[environment]

module Fathom
  def self.root
    @root ||= ::Pathname.new(::File.expand_path("../..", __FILE__))
  end
end

require File.join(Fathom.root, "lib/service_objects/service_object")
require_all "lib"

::Time.zone = "UTC"
