class SessionsController < ApplicationController


  def create
    user = User.find_or_create_from_auth(request.env["omniauth.auth"])
    if user
      session[:user_id] = user[:user_id]
      redirect_to dashboard_path
    end
  end


  def destroy
   session.clear
   @current_user = nil
   flash[:success] = "You have been logged out."
   redirect_to root_path
 end
end
