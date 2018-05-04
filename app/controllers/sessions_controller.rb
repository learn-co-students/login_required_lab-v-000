class SessionsController < ApplicationController
  
  def show
    if current_user
     render 'sessions/homepage'
   else
     redirect_to login_path
   end
  end
  
  def new
   if current_user
    redirect_to homepage_path(current_user)
  else
    render 'sessions/login'
   end
  end
  
  def create
    if params[:name] && !params[:name].blank?
     session[:name] = params[:name]
     redirect_to homepage_path
   else
     redirect_to login_path, alert: "Please enter a valid name"
   end
  end
  
  def destroy
    session.delete :name
    redirect_to '/new'
  end
  
end
