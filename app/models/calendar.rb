class Calendar
  
  def initialize
    @cal = Time.now.beginning_of_year
  end
  
  def year
    @cal.year
  end  
  
  def months
    returning result = [] do
      first_days_and_months_names.each do |array_month|
        result << Month.new(array_month)
      end
    end
  end

  def first_days_and_months_names
    Date::MONTHNAMES[1,12].zip(first_day_months)
  end
  
  def first_day_months
    day = @cal
    returning days = [day] do
      11.times do 
        day = day.next_month
        days << day
      end
    end
  end

end