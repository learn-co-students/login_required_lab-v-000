class SecretsController < ApplicationController
before_action :logged_in?

  def show
  end

  private

  def logged_in?
    if session[:name]
      render 'show'
    else
      redirect_to login_path
    end
  end

end