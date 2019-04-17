require 'date'

module Creator
  def character_set
    ("a".."z").to_a << " "
  end

  def create_key
    (0..99999).to_a.sample.to_s.rjust(5, '0')
  end

  def create_date
    Date.today.strftime('%d%m%y')
  end

  def shifts_keys
    ("A".."D").to_a
  end
end
