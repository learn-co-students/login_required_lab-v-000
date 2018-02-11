class SessionsController < ApplicationController
  before_action :current_user
  def new
  end

  def create
  	if params[:name] != ""
  		session[:name] = params[:name]
	  	redirect_to 'secrets#show'
	else
		redirect_to controller: 'sessions', action: 'new'
	end
  end

  def destroy
  	session.delete :name
  	redirect_to 'sessions#new'
  end

  private

  def current_user
  	redirect_to controller: 'sessions', action: 'new' unless params[:name] || session[:name]
  end
end
