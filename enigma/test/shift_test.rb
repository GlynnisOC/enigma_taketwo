require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require './lib/date'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_exists
    shift = Shift.new
    assert_instance_of Shift, shift
  end

  def test_it_can_add_key_and_date_digits_together
    skip
    shift = Shift.new
    assert_equal [79, 45, 11, 58], shift.add_date_and_key_digits
  end

  def test_it_returns_a_hash_of_keys
    shift = Shift.new
    shift.add_date_and_key_digits
    expected = {:A=> 79, :B=> 45, :C=> 11, :D=> 58}
    assert_equal expected, shift.hash_of_keys
  end
end
