Rails.application.routes.draw do
  resources :artists
  resources :events
  post "/login", to: "artists#login"
  post "/signup", to: "artists#create"
  get "/validate", to: "artists#validate"

end
