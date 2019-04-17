require './lib/key'
require './lib/date_set'

module Shift
  include Key
  include Date_set

  def add_date_and_key_digits(key, date)
    keys_array = sep_keys_array(key)
    four_digits = last_four(date).to_s.chars.map(&:to_i)
    [four_digits, keys_array].transpose.map { |i| i.inject(:+)}
  end

  def hash_of_keys(key, date)
    four_keys = add_date_and_key_digits(key, date)
    abcd_symbols = shifts_keys.map { |letter| letter.to_sym }
    abcd_symbols.inject({}) do |final_shifts, letter|
      final_shifts[letter] = four_keys.shift
      final_shifts
    end
  end

  def shift_spots
    hash_of_keys(key, date).values
  end

  def deshift_spots
    shift_spots.map { |digit| -digit }
  end

  def div_message_into_fours
    four_characters = []
    @message.chars.each_slice(4) do |chars|
      four_characters.push(chars)
    end
    four_characters
  end

  def shift_one_letter(char, shift_spot)
    chars = div_message_into_fours.flatten
    index = chars.map { |i| chars.find_index(i) }
    shifted_char = character_set.rotate(shift_spot)
    require 'pry';binding.pry
    shifted_char[index]
  end

  def shift_message_in_fours(chars, shift_spots)
    chars.map.with_index do |characters, index|
      shift_one_letter(characters, shift_spots[index])
    end
  end
end
