class SessionsController < ApplicationController
  def login

  end

  def new
    render :login
  end

  def set
    if !params[:name].empty?
      session[:name] = params[:name]
      @user = current_user
      render :welcome
    else
      render :login
    end
  end

end
