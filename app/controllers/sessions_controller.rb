class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to root_url if !params[:name] || params[:name].empty?
    login
    redirect_to secrets_url
  end

  def destroy
    logout
    redirect_to root_url
  end
end
