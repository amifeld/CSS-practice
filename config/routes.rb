Rails.application.routes.draw do
  # Resources
  resources "sessions"
  resources "users"
  
  # Login/logout
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  # Define the root route
  get("/", { :controller => "users", :action => "new" })
end

# config/routes.rb

Rails.application.routes.draw do
  # other routes...

  get 'my_cats', to: 'pages#my_cats'
end
