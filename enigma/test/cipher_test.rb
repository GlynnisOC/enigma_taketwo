require './test/test_helper'

class CipherTest < Minitest::Test

  def setup
    @cipher = Cipher.new('hey there', 01234, '160419')
  end

  def test_it_exists
    assert_instance_of Cipher, @cipher
  end

  def test_it_is_init_with_message
    assert_equal 'hey there', @cipher.message
  end

  def test_it_divides_message_into_four_blocks
    assert_equal [["h", "e", "y", " "], ["t", "h", "e", "r"], ["e"]], @cipher.div_message_into_fours
  end

  def test_it_can_encrypt_a_message
    assert_equal 'yrlw', @cipher.encrypt
  end

  def test_it_can_decrypt_a_message
    assert_equal 'yell', @cipher.decrypt
  end
end
