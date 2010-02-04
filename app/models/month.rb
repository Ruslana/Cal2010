class Month
  
  def initialize(name)
   @name = name
   name
  end
  
  def name
   @name
  end
  
  def weeks
   result = []
   result << Week.new
  end
  
end