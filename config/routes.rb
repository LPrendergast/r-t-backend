Rails.application.routes.draw do
  resources :artists
  resources :events
  post "/login", to: "artists#login"
end
