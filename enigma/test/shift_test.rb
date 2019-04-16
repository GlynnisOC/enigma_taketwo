require './test/test_helper'

class ShiftTest < Minitest::Test

  def test_it_can_add_key_and_date_digits_together
    skip
    assert_equal [79, 45, 11, 58], shift.add_date_and_key_digits
  end

  def test_it_returns_a_hash_of_keys
    skip
    expected = {:A=> 79, :B=> 45, :C=> 11, :D=> 58}
    assert_equal expected, shift.hash_of_keys
  end

  def test_it_shifts_letters_with_hash_of_keys
    skip
    assert_equal "l", shift.shift_letters_with_hash_of_keys("h", 4)
  end
end
