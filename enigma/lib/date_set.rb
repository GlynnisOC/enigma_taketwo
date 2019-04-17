require './lib/creator'

module Date_set
  include Creator

  def date_squared(date)
    (date.delete('/')).to_i ** 2
  end

  def last_four(date)
    date_squared(date).digits.reverse.last(4)
  end
end
