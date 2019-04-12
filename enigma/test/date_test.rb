require 'minitest/autorun'
require 'minitest/pride'
require './lib/date'

class DateTest < Minitest::Test

  def test_it_exists
    date = Date.new
    assert_instance_of Date, date
  end

  def test_it_returns_todays_date
    date = Date.new
    assert_equal "12/04/19", date.get_todays_date
  end
end
