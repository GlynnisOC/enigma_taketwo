class Cipher
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def div_message_into_fours
    four_characters = []
    @message.chars.each_slice(4) do |chars|
      four_characters.push(chars)
    end
    four_characters
  end
end
