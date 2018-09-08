class SessionsController < ApplicationController
  before_action :require_login
  
  def new
    current_user
  end
  
  def create
    if params[:name].blank?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end
  
  def destroy
    session.delete :name
    redirect_to '/logout'
  end
end