class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to controller: 'secrets', action: 'show'
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'new'
  end

end
