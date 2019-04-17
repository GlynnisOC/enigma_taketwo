require './test/test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @@enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @@enigma
  end

  def test_it_can_encrypt_a_message_with_a_key_and_a_date
    expected = { encryption: "duns", key: "01234", date: "160419"}
    assert_equal expected, @@enigma.encrypt("yell", "01234", "160419")
  end

  def test_it_can_decrypt_a_message_with_a_key_and_a_date
    expected = { encryption: "yell", key: "01234", date: "160419"}
    assert_equal expected, @@enigma.decrypt("duns", "01234", "160419")
  end
end

# Enigma#encrypt(message, key, date)
#
# The encrypt method takes a message String as an argument. It can optionally take a Key and Date as arguments to use for encryption. If the key is not included, generate a random key. If the date is not included, use today’s date.
#
# The encrypt method returns a hash with three keys:
#
# :encryption => the encrypted String
# :key => the key used for encryption as a String
# :date => the date used for encryption as a String in the form DDMMYY
# Enigma#decrypt(ciphertext, key, date)
#
# The decrypt method takes a ciphertext String and the Key used for encryption as arguments. The decrypt method can optionally take a date as the third argument. If no date is given, this method should use today’s date for decryption.
#
# The decrypt method returns a hash with three keys:
#
# :decryption => the decrypted String
# :key => the key used for decryption as a String
# :date => the date used for decryption as a String in the form DDMMYY
