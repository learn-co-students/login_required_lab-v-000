class SessionsController < ApplicationController

  def new
  end

  def create
    if current_user && current_user != ''
      redirect_to secrets_path
    else
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end

end
