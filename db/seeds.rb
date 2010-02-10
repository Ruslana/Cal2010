["Every week","Every month","Every day","Every work-day"].each do |sort|
  Select.create(:sort => sort)
end