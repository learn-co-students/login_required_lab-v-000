class SessionsController < ApplicationController
  #before_action :authentication_required
  #skip_before_action :require_login, only: [:index]

  def new
  end

  def create
    if !params[:name].present?
      redirect_to '/sessions/new'
    else session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
