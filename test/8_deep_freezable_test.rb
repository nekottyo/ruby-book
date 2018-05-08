require_relative 'helper/test_helper.rb'
require_relative '../lib/8_bank.rb'
require_relative '../lib/8_team.rb'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値は正しいか
    assert_equal %w[Japan US India], Team::COUNTRIES
    # 配列自体が frozen されているか
    assert Team::COUNTRIES.frozen?
    # 配列の要素全てが frozen されているか
    assert Team::COUNTRIES.all?(&:frozen?)
  end

  def test_deep_freeze_to_hash
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'doller', 'India' => 'rupee' },
      Bank::CURRENCIES
    )
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.each_value(&:frozen?)
  end
end
