Rails.application.routes.draw do

  get '/auth/:provider/callback', to: "sessons#create", as: :strava_login
  delete "/logout",             to: "sessions#destroy"

  root 'homepage#show'
end
