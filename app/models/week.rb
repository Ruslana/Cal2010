class Week
  
  attr_reader :day
  
  def initialize(day)
    @day = day.to_time
  end
  
  def week
    if day.beginning_of_week < day.beginning_of_month
      first_week(day)
    elsif
      day.end_of_week > day.end_of_month
      last_week(day)
    else
      middle_week(day)
    end
  end
  
  def middle_week(day)
    returning result = [] do
      (day.beginning_of_week.day..day.end_of_week.day).each do |dat|
        result << dat
      end
    end
  end
  
  def first_week(day)
    returning result = [] do
      (day.beginning_of_month.day..day.end_of_week.day).each do |dat|
        result << dat
      end
    end
  end
  
  def last_week(day)
    returning result = [] do
      (day.beginning_of_week.day..day.end_of_month.day).each do |dat|
        result << dat
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