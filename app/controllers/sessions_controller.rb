class SessionsController < ApplicationController
  def new
  end

  def create

  	if !current_user || current_user == "" && params[:name]
  		session[:name] = params[:name]
  		redirect_to '/sessions/new'
  	end
  end

  def destroy
  	session.delete :name
  	redirect_to '/sessions/new'
  end
end
