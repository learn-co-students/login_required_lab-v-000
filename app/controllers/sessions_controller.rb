class SessionsController < ApplicationController
  before_action :logged_in?, only: [:show]

  def new

  end

  def create
    if valid_name?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_url
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
