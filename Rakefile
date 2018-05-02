require "rake/testtask"
require 'rubycritic/rake_task'


Rake::TestTask.new do |test|
  test.libs << 'test'
  test.test_files = Dir[ 'test/**/*_test.rb' ]
end
desc "Run test"

RubyCritic::RakeTask.new do |task|
  # Name of RubyCritic task. Defaults to :rubycritic.
  #task.name    = 'something_special'

  # Glob pattern to match source files. Defaults to FileList['.'].
  task.paths   = FileList['lib/**/*.rb']

  # You can pass all the options here in that are shown by "rubycritic -h" except for
  # "-p / --path" since that is set separately. Defaults to ''.
  #task.options = '--mode-ci --format json'
  task.options = '--no-browser'

  # Defaults to false
end


task default: :test

