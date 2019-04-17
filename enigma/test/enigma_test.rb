require './test/test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @@enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @@enigma
  end

  def test_it_can_encrypt_a_message_with_a_key_and_a_date
    expected = { encryption: "dvnt", key: "01234", date: "170419"}
    assert_equal expected, @@enigma.encrypt("yell", "01234", "170419")
  end

  def test_it_can_decrypt_a_message_with_a_key_and_a_date
    expected = { encryption: "yell", key: "01234", date: "170419"}
    assert_equal expected, @@enigma.decrypt("dvnt", "01234", "170419")
  end

  def test_it_returns_an_exclamation_mark_too
    expected = { encryption: "dvnt!", key: "01234", date: "170419"}
    assert_equal expected, @@enigma.encrypt('yell!', '01234', '170419')
  end

  def test_it_can_encrypt_a_message_with_only_a_key
    expected = { encryption: "dvnt", key: "01234", date: "170419"}
    assert_equal expected, @@enigma.encrypt('yell', '01234')
  end

  def test_it_can_decrypt_a_message_with_only_a_key
    encrypted = { encryption: "cznt", key: "01234", date: "170419"}
    expected = { encryption: "xill", key: "01234", date: "170419"}
    assert_equal expected, @@enigma.decrypt(encrypted[:encryption], '01234')
  end

  def test_it_can_encrypt_a_message_with_no_date_or_key
    assert_equal '170419', @@enigma.encrypt('yell')[:date]
    assert_equal 5, @@enigma.encrypt('yell')[:key].length
  end
end
