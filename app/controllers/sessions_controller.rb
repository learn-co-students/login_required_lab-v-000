class SessionsController < ApplicationController

  before_action :require_login, only: [:welcome, :destroy]

  def new

  end

  def create
    unless params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end
  end

  def welcome

  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  private

    def require_login
      unless session.include? :name
        redirect_to '/login'
      end
    end

end