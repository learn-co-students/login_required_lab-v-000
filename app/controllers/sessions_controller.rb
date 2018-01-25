class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
   else
    session[:name] = params[:name]
      redirect_to '/secret'
    end

  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end


end
