class SessionsController < ApplicationController

  def create
    @client = Strava::Api::V3::Client.new(:access_token => "3dc61d2c7f1e1f7c171f2f18da0f2364ef052bfa")
    # User.from_omniauth(@client.retrieve_current_athlete)
    if user = User.from_omniauth(@client.retrieve_current_athlete)
      session[:user_id] = user["user_id"]
    else
      flash[:danger] = "There was a problem signing in"
    end
    redirect_to root_path
  end

  def destroy
   session.delete(:user_id)
   @current_user = nil
   flash[:success] = "You have been logged out."
   redirect_to root_path
 end
end
