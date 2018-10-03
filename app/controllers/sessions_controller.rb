class SessionsController < ApplicationController

  def show
    require_login
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !current_user.nil?
      session[:name] = nil
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end
end
