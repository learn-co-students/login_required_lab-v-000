class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index, :new, :create]

  def index
    redirect_to '/login'
  end

  def new
  end

  def create
    if !current_user
      if !params[:name].blank?
        session[:name] = params[:name]
        render 'welcome'
      else
        redirect_to '/login'
      end
    else
      render 'welcome'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  private

  def require_login
    return head(:forbidden) unless current_user
  end
end
