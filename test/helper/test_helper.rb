require 'simplecov'
require 'minitest/autorun'
require 'minitest/ci'
require "codeclimate-test-reporter"

if ENV["CIRCLECI"]
  Minitest::Ci.report_dir = "#{ENV["CIRCLE_TEST_REPORTS"]}/reports"
end

dir = File.join(ENV['CIRCLE_ARTIFACTS'] || 'build', 'coverage')
SimpleCov.coverage_dir(dir)

SimpleCov.start do
  add_filter '/vendor/'
  add_filter '/spec/'
  formatter SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    CodeClimate::TestReporter::Formatter
  ]
end
