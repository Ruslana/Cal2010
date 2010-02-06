class Calendar
  
  def initialize
    @call = Time.now.beginning_of_year
  end
  
  def year
    @call.year
  end  
  
  def first_day_months
    day = @call
    returning days = [day] do
      11.times do 
        day = day.next_month
        days << day
      end
    end
  end
  
  def months
    returning result = [] do
      months_names.each do |name|
        result << Month.new(name)
      end
    end
  end

  def months_names
    Date::MONTHNAMES[1,12].zip(first_day_months)
  end

end