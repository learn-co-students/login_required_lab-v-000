class SessionsController < ApplicationController

  def new
    current_user
  end

  def create
    if name_check
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if !session[:name].nil? && !session[:name].empty?
      session.delete :name
    end
    redirect_to controller: 'application', action: 'hello'
  end

  private

  def name_check
    !params[:name].nil? && !params[:name].empty?
  end
end
