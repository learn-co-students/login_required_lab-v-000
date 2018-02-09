class SessionsController < ApplicationController

  def create

    if session[:name].nil?
      redirect_to controller: 'sessions', action: 'new'
    end
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end

end
