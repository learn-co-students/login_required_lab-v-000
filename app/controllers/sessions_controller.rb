class SessionsController < ApplicationController

  def new
  end
  def create
    redirect_to controller: 'sessions', action: 'new' unless session.include? :name
    session[:name] = params[:name]
  end
  def destroy

    session.delete :name if current_user

  end
end
