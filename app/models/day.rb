class Day
    
  attr_reader :date
  
  def initialize(date)
    @date = date
  end
  
  def times
    returning hours = [] do
      find_hours.each do |hour|
        hours << hour.strftime("%H:%M")
      end
    end
  end
  
  def find_hours
    hour = Time.now.beginning_of_day
    returning result = [hour] do
      23.times do 
        hour = hour + 3600
        result << hour
      end
    end
  end

end