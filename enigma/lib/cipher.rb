require './lib/shift'

class Cipher
  include Shift
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message.downcase
    @key = key
    @date = date
  end
  
  def encrypt
    message_split = div_message_into_fours
    message_split.map do |chars|
      shift_message_in_fours(chars, shift_spots)
    end.join
  end

  def decrypt
    message_split = div_message_into_fours
    message_split.map do |chars|
      shift_message_in_fours(chars, deshift_spots)
    end.join
  end

  def self.encrypt(message, key, date)
    self.new(message, key, date).encrypt
  end

  def self.decrypt(encrypt_message, key, date)
    self.new(encrypt_message, key, date).decrypt
  end
end
