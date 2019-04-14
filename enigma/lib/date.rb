require 'date'
class Date

  def get_todays_date
    DateTime.now.strftime("%d/%m/%y")
  end

  def date_squared
    (get_todays_date.delete('/')).to_i ** 2
  end

  def last_four
    date_squared.to_s.slice(7, 4).to_i
  end
end
