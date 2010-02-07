class Month
  
  attr_reader :array_month
  
  def initialize(array_month)
    @array_month = array_month
  end
  
  def days_of_month
    day = array_month.last
    returning month = [] do
      (day.beginning_of_month.day..day.end_of_month.day).each do |dat|
        month << dat
      end
    end
  end
  
  def weeks_of_month
    day = array_month.last.to_time 
    returning weeks = [] do
      while day < array_month.last.to_time.end_of_month do
        weeks << Week.new(day)
        day = day.next_week
      end
    end
  end

end