require 'strava/api/v3'
class OauthController < ApplicationController

  def authorize
    @client = Strava::Api::V3::Client.new(:access_token => "3dc61d2c7f1e1f7c171f2f18da0f2364ef052bfa")
    User.from_omniauth(@client.retrieve_current_athlete)
  end

end
