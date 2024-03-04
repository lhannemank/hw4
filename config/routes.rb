Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"

  #Login and log out routes with connected actions
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

end
