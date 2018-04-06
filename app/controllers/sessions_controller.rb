class SessionsController < ApplicationController
  # before_action :current_user

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  private

  # def current_user
  #   session.include? :user_id
  # end
end
