require 'date'
class Date

  def get_todays_date
    DateTime.now.strftime("%d/%m/%y")
  end

  def date_squared
    (get_todays_date.delete('/')).to_i ** 2
    # map do |digit|
    #   digit ** 2.join('/')
    # end
  end
end
