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
end
