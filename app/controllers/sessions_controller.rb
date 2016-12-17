class SessionsController < ApplicationController

  def new

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
    if name_check
      session.delete :name
    end
    redirect_to controller: 'application', action: 'hello'
  end

  private

  def name_check
    !params[:name].nil? && !params[:name].empty?
  end
end
