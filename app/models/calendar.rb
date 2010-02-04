class Calendar
  
  def initialize
    year
  end
  
  def year
    "2010"
  end
  
  def months
    returning result = [] do
      months_names.each do |name|
        result << Month.new(name)
      end
    end
  end

  def months_names
    Date::MONTHNAMES[1,12]
  end
  
end