class Month
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def days_of_month
    day = @name.last
    returning month = [] do
      (day.beginning_of_month.day..day.end_of_month.day).each do |dat|
        month << dat
      end
    end
  end
  
  def weeks_of_month
    day = @name.last
    returning weeks = [] do
      while day < @name.last.end_of_month 
        weeks << Week.new(day)
        day = day.next_week
      end
    end
  end

end