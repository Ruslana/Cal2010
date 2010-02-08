class Calendar
  
  def initialize
    @calendar = Time.now.beginning_of_year
  end
  
  def year
    @calendar.year
  end  
  
  def months
    returning result = [] do
      first_days_and_months_names.each do |name_and_day|
        result << Month.new(name_and_day)
      end
    end
  end
  
  def mas_months
    returning result = [] do
      [0,4,8].each do |n|
          result << months[n,4] 
      end
    end
  end

  def first_days_and_months_names
    Date::MONTHNAMES[1,12].zip(first_day_months)
  end
  
  def first_day_months
    day = @calendar
    returning days = [day] do
      11.times do 
        day = day.next_month
        days << day
      end
    end
  end

end