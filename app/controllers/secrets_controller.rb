class SecretsController < ApplicationController
  before_action :logged_in?

  def show
  end

  private
  def logged_in?
    if !session[:name]
      redirect_to '/login'
    end
  end
end
