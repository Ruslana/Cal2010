ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => "calendar"
  map.login 'calendar', :controller => "calendar"
  
  map.resources :events
  map.resources :users
  map.resources :sessions
  
  map.calendar "/calendar", :controller => "calendar"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
