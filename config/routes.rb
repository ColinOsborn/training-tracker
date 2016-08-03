Rails.application.routes.draw do
  root 'homepage#show'

  get '/auth/:provider/callback', to: "sessions#create", as: :strava_login
  delete "/logout",               to: "sessions#destroy"
  get '/dashboard',               to: "dashboard#show"
  
  resources :athletes, only: [:show, :index]
end
