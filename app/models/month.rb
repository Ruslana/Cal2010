class Month
  
  attr_reader :name_and_day, :day
  
  def initialize(name_and_day)
    @name_and_day = name_and_day
    @day = name_and_day.last.to_time
  end

  def weeks_of_month
    dat = day.beginning_of_month 
    returning weeks = [] do
      while dat < day.end_of_month do
        weeks << Week.new(dat)
        dat = dat.next_week
      end
    end
  end

end