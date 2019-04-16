require './lib/creator'
require './lib/cipher'

class Enigma
  include Creator

  def encrypt(message, key, date)
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
