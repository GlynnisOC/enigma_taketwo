require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_a_key_will_return_5_digits
    key = Key.new
    key.supply_digits
    assert_equal 5, key.supply_digits.to_s.size
  end
end
