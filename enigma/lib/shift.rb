require 'date'
class Shift
  attr_reader :key, :date

  def initialize
    #is each shift going to be born with a new key and date?
    @key = Key.new
    @date = Date.new
  end

  def add_date_and_key_digits
    keys_str_array = @key.supply_digits.chars.each_cons(2).to_a
    sep_keys_array = keys_str_array.map { |key| key.join.to_i }
    four_digits = @date.last_four.to_s.chars.map(&:to_i)
    [four_digits, sep_keys_array].transpose.map { |i| i.inject(:+)}
  end

  def hash_of_keys
    four_keys = add_date_and_key_digits
    abcd = ("A".."D").to_a
    abcd_symbols = abcd.map { |letter| letter.to_sym }
    abcd_symbols.inject({}) do |final_shifts, letter|
      final_shifts[letter] = four_keys.shift
      final_shifts
    end
  end
end
