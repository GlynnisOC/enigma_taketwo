module Creator
  def character_set
    ("a".."z").to_a << " "
  end

  def create_key
    (0..9).to_a.sample(5).join("")
  end

  def create_date
    Date.today.strftime('%m%d%y')
  end

  def shifts_keys
    ("A".."D").to_a
  end
end 
