require 'simplecov'
require 'simplecov-json'
require 'minitest/autorun'
require 'minitest/ci'
require 'codeclimate-test-reporter'

SimpleCov.start do
  add_filter '/vendor/'
  add_filter '/spec/'
  formatter SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::JSONFormatter,
    CodeClimate::TestReporter::Formatter
  ]
end
