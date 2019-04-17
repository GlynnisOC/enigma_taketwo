require './lib/creator'
require './lib/cipher'

class Enigma
  include Creator

  def encrypt(message, key = create_key, date = create_date)
    cipher = Cipher.encrypt(message, key, date)
    { encryption: cipher, key: key, date: date }
  end

  def decrypt(message, key = create_key, date = create_date)
    cipher = Cipher.decrypt(message, key, date)
    { encryption: cipher, key: key, date: date }
  end
end
