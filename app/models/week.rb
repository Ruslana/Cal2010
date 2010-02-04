class Week
  
  def days
    returning result = [] do
      days_names.each do |name|
        result << Day.new(name)
      end
    end
  end

  def days_names
    Date::DAYNAMES
  end
  
end