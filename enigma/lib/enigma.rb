require './lib/creator'
require './lib/cipher'

class Enigma
  include Creator

  def encrypt(message, key = create_key, date = create_date)
    cipher = Cipher.encrypt(message, key, date)
    { encryption: cipher, key: key, date: date }
  end

  def decrypt(message, key, date)
  end

  def key
    create_key
  end

  def date
    create_date
  end
end
