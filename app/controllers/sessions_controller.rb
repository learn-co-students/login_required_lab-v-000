class SessionsController < ApplicationController
  before_action :logged_in?
  skip_before_action :logged_in?, only: [:create]

  def new
  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to :new
    else
      session[:name] = params[:name]
      redirect_to "secrets#show"
    end
  end

  def destroy
    if session[:name]
      session.delete(:name)
    end
    redirect_to :new
  end

  private
  def logged_in?
    redirect_to :new unless current_user != nil
  end
end
