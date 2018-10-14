require 'pry'

class SessionsController < ApplicationController
  before_action :require_login

  def new
  end

  def create
    binding.pry
    if !params[:name].present?
      redirect_to root_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
  end

  private

    def require_login
      redirect_to controller: 'sessions', action: 'new' unless logged_in?
    end

end
