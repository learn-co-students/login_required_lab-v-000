class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:new]

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      render 'secrets/show'
    end
  end

  def destroy
    session.delete :name 
    redirect_to sessions_new_path
  end


end
