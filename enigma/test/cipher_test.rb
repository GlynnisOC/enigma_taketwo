require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require './lib/date'
require './lib/shift'
require './lib/cipher'

class CipherTest < Minitest::Test

  def test_it_exists
    cipher = Cipher.new('hey there')
    assert_instance_of Cipher, cipher
  end

  def test_it_is_init_with_message
    cipher = Cipher.new('hey there')
    assert_equal 'hey there', cipher.message
  end

  def test_it_divides_message_into_four_blocks
    cipher = Cipher.new('hey there')
    assert_equal [["h", "e", "y", " "], ["t", "h", "e", "r"], ["e"]], cipher.div_message_into_fours
  end

  def test_it_can_encrypt_a_message
    cipher = Cipher.new('yell')
    assert_equal 'yrlw', cipher.encrypt
  end
end
