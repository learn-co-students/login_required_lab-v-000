class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      render secrets_show_path
    else
      redirect_to login_path
    end
  end

end
