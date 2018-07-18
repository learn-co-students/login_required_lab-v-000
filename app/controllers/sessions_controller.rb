class SessionsController < ApplicationController

  def create
    session[:name] = params[:name]
    if logged_in?
      redirect_to 'secrets/show'
    else
      redirect_to '/login'
    end
  end

  def new
  end

  def destroy
    if session[:name] != nil
			session[:name] = nil
		end
  end
end
