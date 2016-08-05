class SessionsController < ApplicationController  

  def index
    redirect_to login_path unless session.include? :name
    @user = current_user
  end

  # POST method for /login
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  # Displays login form /login
  def new  
    session.delete(:name)    
  end

  def destroy
    session.delete(:name)
  end

end
