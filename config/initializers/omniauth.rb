Rails.application.config.middleware.use OmniAuth::Builder do
  provider :strava, ENV["CLIENT_ID"], ENV["STRAVA_CLIENT_SECRET"], scope: 'view_private,write'
end
