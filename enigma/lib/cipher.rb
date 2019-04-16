class Cipher
  attr_reader :message

  def initialize(message)
    @message = message
    @shift = Shift.new
  end

  def div_message_into_fours
    four_characters = []
    @message.chars.each_slice(4) do |chars|
      four_characters.push(chars)
    end
    four_characters
  end

  def encrypt
    shift_spots = @shift.hash_of_keys.values
    message_split = div_message_into_fours
    message_split.map do |chars|
      @shift.shift_message_in_fours(chars, shift_spots)
    end.join
  end
end
# require 'pry';binding.pry
