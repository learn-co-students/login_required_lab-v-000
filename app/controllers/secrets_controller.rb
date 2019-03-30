class SecretsController < ApplicationController

  before_action :logged_in?


  def show
    # binding.pry
    if session[:name]
      render :show
    else
      redirect_to '/sessions/new'
    end
  end


  private

  def logged_in?
    # binding.pry
    session[:name]
  end


end
