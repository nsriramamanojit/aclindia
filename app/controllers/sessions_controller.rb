#Author: Chaitanya Ram
#Controller: Login Session
#==========================================
class SessionsController < ApplicationController
  layout 'home'
  skip_before_filter :authorize
  def new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to home_url, :alert => "Please Check Username or Password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_url, :notice => "You are Successfully logged out from System."
  end

end
