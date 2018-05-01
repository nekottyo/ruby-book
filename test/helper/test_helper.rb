require 'coco'
require 'minitest/autorun'
require 'minitest/ci'

if ENV["CIRCLECI"]
  Minitest::Ci.report_dir = "#{ENV["CIRCLE_TEST_REPORTS"]}/reports"
end
