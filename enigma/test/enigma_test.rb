require './test/test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @@enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @@enigma
  end

  def test_it_can_encrypt_a_message_with_a_key_and_a_date
    expected = { encryption: "dvnt", key: "01234", date: "160419"}
    assert_equal expected, @@enigma.encrypt("yell", "01234", "160419")
  end

  def test_it_can_decrypt_a_message_with_a_key_and_a_date
    expected = { encryption: "yell", key: "01234", date: "160419"}
    assert_equal expected, @@enigma.decrypt("dvnt", "01234", "160419")
  end

  def test_it_returns_an_exclamation_mark_too
    skip
    expected = { encryption: "dvnt!", key: "01234", date: "160419"}
    assert_equal expected, @@enigma.encrypt('yell', '01234', '160419')
  end

  def test_it_can_encrypt_a_message_with_only_a_key
    expected = { encryption: " rnt", key: "01234", date: "160419"}
    assert_equal expected, @@enigma.encrypt('yell', '01234')
  end
end

# # encrypt a message with a key (uses today's date)
# pry(main)> encrypted = enigma.encrypt("hello world", "02715")
# #=> # encryption hash here
#
# #decrypt a message with a key (uses today's date)
# pry(main) > enigma.decrypt(encrypted[:encryption], "02715")
# #=> # decryption hash here
#
# # encrypt a message (generates random key and uses today's date)
# pry(main)> enigma.encrypt("hello world")
# #=> # encryption hash here
