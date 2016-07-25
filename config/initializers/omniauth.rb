Rails.application.config.middleware.use OmniAuth::Builder do
  provider :strava, Rails.application.secrets.ENV["strava_client_id"], Rails.application.secrets.ENV["strava_api_key"], scope: 'public'
end
