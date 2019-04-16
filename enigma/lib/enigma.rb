require './lib/key'
require './lib/shift'
require './lib/cipher'
require './lib/date'

class Enigma
  include Key
  include Shift
  include Cipher
  include Date

  def initialize(message, key, date)
    @message = message.downcase
    @key = key
    @date = date
  end

  def encrypt(message, key, date)
  end

  def decrypt(message, key, date)
  end
end
