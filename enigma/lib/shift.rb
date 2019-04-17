require './lib/key'
require './lib/date_set'

module Shift
  include Key
  include Date_set

  def add_date_and_key_digits
    sep_keys_array(key)
    four_digits = last_four(date).to_s.chars.map(&:to_i)
    [four_digits, sep_keys_array(key)].transpose.map { |i| i.inject(:+)}
  end

  def hash_of_keys
    four_keys = add_date_and_key_digits
    abcd_symbols = shifts_keys.map { |letter| letter.to_sym }
    abcd_symbols.inject({}) do |final_shifts, letter|
      final_shifts[letter] = four_keys.shift
      final_shifts
    end
  end

  def shift_letters_with_hash_of_keys(char, shift_spot)
    if character_set.include?(char)
      index = character_set.find_index(char)
      shifted_char = character_set.rotate(shift_spot)
      shifted_char[index]
    else
      char
    end
  end

  def shift_spots
    hash_of_keys.values
  end

  def deshift_spots
    shift_spots.map { |digit| -digit }
  end

  def shift_message_in_fours(chars, shift_spots)
    chars.map.with_index do |characters, index|
      shift_letters_with_hash_of_keys(chars, shift_spots[index])
    end
  end
end
