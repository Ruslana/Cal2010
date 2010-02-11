class Select < ActiveRecord::Base
  has_many :events
  
  def select_recurs
    "#{sort}"
  end
  
end
