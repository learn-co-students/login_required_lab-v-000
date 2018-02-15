class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:create]

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name].nil?
      session[:name]
    else
      session.delete :name
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
