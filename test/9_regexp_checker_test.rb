# frozen_string_literal: true

require_relative 'helper/test_helper.rb'
require_relative '../lib/9_regexp_checker.rb'

class RegexpCheckerTest < Minitest::Test
  def test_checker
    $stdin = StringIO.new("123-45\n[0-9]+\n")

    assert_output(/Matched: 123, 45/) { RegexpChecker.checker }
    $stdin = STDIN
  end

  def test_checker_no_match
    $stdin = StringIO.new("123-45\n[a-z]+\n")

    assert_output(/Nothing matched./) { RegexpChecker.checker }
    $stdin = STDIN
  end

  def test_checker_with_invalid_pattern
    $stdin = StringIO.new("123-45\n[0-9\n[0-9\n[0-9\n")

    assert_output(/Invalid pattern: /) { RegexpChecker.checker }

    $stdin = STDIN
  end
end
