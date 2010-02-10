class Week
  
  attr_reader :day
  
  def initialize(day)
    @day = day.to_time
  end
  
  def find_weeks
    returning result = [] do
      if day.beginning_of_week < day.beginning_of_month
        result << days_of_weeks(day.beginning_of_week, day.last_month.end_of_month)
        result << days_of_weeks(day.beginning_of_month, day.end_of_week)
      elsif
        day.end_of_week > day.end_of_month
        result << days_of_weeks(day.beginning_of_week, day.end_of_month)
        result << days_of_weeks(day.next_month.beginning_of_month, day.end_of_week)
      else
        result << days_of_weeks(day.beginning_of_week, day.end_of_week)
      end
    end
  end
  
  def days_of_weeks(first_day, last_day)
    dat = first_day
    returning parts_weeks = [] do
      while dat < last_day do
        parts_weeks << Day.new(dat)
        dat = dat.tomorrow
      end
    end
  end  
  
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