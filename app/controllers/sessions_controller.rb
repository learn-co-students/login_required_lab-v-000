class SessionsController < ApplicationController

  def index
    if current_user
      @user = current_user
    else
      redirect_to '/login'
    end
  end

  def new

  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      current_user(params[:name])
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def secret
  redirect_to '/login' if !current_user
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  def require_login
   return head(:forbidden) unless session.include? :name
  end



end
