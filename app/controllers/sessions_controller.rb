class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password]) && user.email != 'admin@gmail.com'
      session[:user_id] = user.id
      redirect_to '/orders'
    elsif user.email == 'admin@gmail.com' && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/adminorders'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
  
end
