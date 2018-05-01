require "rake/testtask"


Rake::TestTask.new do |test|
  test.libs << 'test'
  test.test_files = Dir[ 'test/**/*_test.rb' ]
  test.verbose = true
end
desc "Run test"

task default: :test

