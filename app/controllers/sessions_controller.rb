class SessionsController < ApplicationController

  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.user_id
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
