require_relative "config/environment"
require "standalone_migrations"
require "rubocop/rake_task"

::StandaloneMigrations::Tasks.load_tasks
::RuboCop::RakeTask.new

require "rake/testtask"

::Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = "test/**/*_test.rb"
end

task({ :default => [:test, :rubocop] })
