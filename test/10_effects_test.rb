require_relative 'helper/test_helper.rb'
require './lib/10_effects'

class EffectsTest < Minitest::Test
  def setup
    @test_strings = 'Ruby is fun!'
  end

  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call(@test_strings)
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call(@test_strings)

    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call(@test_strings)
  end

  def test_loud
    effect = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call(@test_strings)

    effect = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call(@test_strings)
  end

end
