Rails.application.routes.draw do

  root 'homepage#show'

  # get '/auth/strava', as: :strava_login
  get '/sessions/create', as: :strava_login
  # get "/strava/oauth/authorize", as: :strava_login
  get "/auth/strava/callback", to: "sessions#create"
  delete "/logout",             to: "sessions#destroy"

end
