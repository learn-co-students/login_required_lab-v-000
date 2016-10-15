class SessionsController < ApplicationController

  def create
    require_login
    if !params[:name].nil?
      session[:name] = params[:name]
    end
  end

  def destroy
    session.destroy
  end
end
