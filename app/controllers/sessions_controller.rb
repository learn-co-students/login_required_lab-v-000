require 'pry'

class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/secrets/show'
    else
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      session.clear
      redirect_to '/login'
    end
  end

end
