require './lib/creator'

module Key
  include Creator

  def sep_keys_array(key)
    str_of_keys = key.chars.each_cons(2).to_a
    str_of_keys.map { |current_key| current_key.join.to_i }
  end
end
