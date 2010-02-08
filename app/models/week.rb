class Week
  
  attr_reader :day
  
  def initialize(day)
    @day = day.to_time
  end
  
  def find_weeks    
    returning parts_weeks = [] do
      if day.beginning_of_week < day.beginning_of_month      
        parts_weeks << week(day, (day.beginning_of_week.day..day.last_month.end_of_month.day))
        parts_weeks << week(day, (day.beginning_of_month.day..day.end_of_week.day))            
      elsif
        day.end_of_week > day.end_of_month      
        parts_weeks << week(day, (day.beginning_of_week.day..day.end_of_month.day))
        parts_weeks << week(day, (day.next_month.beginning_of_month.day..day.end_of_week.day))      
      else      
        parts_weeks << week(day, (day.beginning_of_week.day..day.end_of_week.day))      
      end
    end
  end
  
  def week(day, mass)
    returning result = [] do
      mass.each do |dat|
        result << Day.new(dat)
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