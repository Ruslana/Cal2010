ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => "calendar", :action => "new"
  map.login '/calendar', :controller => "calendar", :action => "new"
  
  map.resources :events
  map.resources :users
  map.resources :sessions
  map.resources :months
  map.resources :calendar
  map.resources :weeks
  map.resources :days
  
  map.calendar "/calendar", :controller => "calendar", :action => "new"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
