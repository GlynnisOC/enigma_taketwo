require 'date'
class Date

  def get_todays_date
    DateTime.now.strftime("%d/%m/%Y")
  end
end
