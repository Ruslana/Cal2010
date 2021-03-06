module ApplicationHelper
  
  def find_event_for_every_month(event, date)
    returning result = [] do
      if event.date.day == date.day 
          result << event.description
		  end
	  end
  end
  
  def find_event_for_every_week(event, date)
    returning result = [] do
      if event.date.strftime("%a") == date.strftime("%a") 
          result << event.description
		  end
	  end
  end
  
  def find_event_for_every_day(event, date)
    returning result = [] do
      result << event.description
	  end
  end
  
  def find_event_for_every_work_day(event, date)
    returning result = [] do
      if (date.strftime("%a") != "Sun") and (date.strftime("%a") != "Sat")
        result << event.description
      end
	  end
  end
  
  def find_event_for_not_recurs(event, date)      
    returning result = [] do
      if (event.date.day == date.day) and (event.date.month == date.month)
        result << event.description
      end
    end
  end

  def recurs(event, date)
    case event.select.sort
     when "Every day"
       find_event_for_every_day(event, date)
     when "Every week"
       find_event_for_every_week(event, date)
     when "Every month"
       find_event_for_every_month(event, date)
     when "Every work-day"
       find_event_for_every_work_day(event, date)
     else
       find_event_for_not_recurs(event, date)
    end
  end
  
  def one_day
    @day.date.to_time
  end
  
  def last_week(date)
    returning result = [] do
      7.times do
        date = date.yesterday.to_time
        result << date
      end
    end
  end
  
end
