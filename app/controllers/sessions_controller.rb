class SessionsController < ApplicationController
  

  def index

  end

  def new
  end

  def create
    redirect_to login_path unless logged_in
    current_user
  end

  def destroy
    session[:name]=nil
    redirect_to login_path
  end



end
