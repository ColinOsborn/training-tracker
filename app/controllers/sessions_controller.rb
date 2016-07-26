class SessionsController < ApplicationController

  def create
    if user = Athlete.from_omniauth(request.env["omniauth.auth"])
      session[:uid] = uid
    else
      flash[:danger] = "There was a problem signing in"
    end
    redirect_to root_path
  end

  def destroy
   session.delete(:uid)
   @current_user = nil
   flash[:success] = "You have been logged out."
   redirect_to root_url
 end
end
