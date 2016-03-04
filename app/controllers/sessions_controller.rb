class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]


  def new
    binding.pry
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      render "welcome"
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end

end
