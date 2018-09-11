class SessionsController < ApplicationController

  def new

  end

  def create
      if !params[:name].blank?
        session[:name] = params[:name]
        redirect_to "secrets/show"
      else
        redirect_to "/login"
      end
  end

  def destroy
    if session[:name] == nil
      redirect_to controller: 'sessions', action: 'new'
    elsif !session[:name].blank?
      session.delete :name
      redirect_to controller: 'secrets', action: 'show'
    end
  end

end
