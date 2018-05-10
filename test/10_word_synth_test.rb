require_relative 'helper/test_helper.rb'
require './lib/10_word_synth'
require './lib/10_effects'

class WordSynthTest < Minitest::Test
  def setup
    @test_strings = 'Ruby is fun!'
  end

  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play(@test_strings)
  end

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', synth.play(@test_strings)
  end

  def test_play_with_many_effects
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play(@test_strings)
  end
end
