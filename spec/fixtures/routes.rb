ActionController::Routing::Routes.draw do |map|
  map.resource :account, :controller => "users"
  map.resource :user_session
  map.resources :conference_sessions
  map.resources :registrations

  map.login "/login", :controller => "user_sessions", :action => "new"
  map.logout "/logout", :controller => "user_sessions", :action => "destroy"
  map.root :controller => "pages"
end