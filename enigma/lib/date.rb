require './lib/creator'

module Date
  include Creator

  def date_squared(date)
    (date.delete('/')).to_i ** 2
  end

  def last_four(date)
    date.to_s.slice(7, 4).to_i
  end
end
