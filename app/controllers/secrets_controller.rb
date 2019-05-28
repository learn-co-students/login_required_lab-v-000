class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private

  def require_login
    if session[:name].nil? || session[:name].empty?
      redirect_to '/new'
    else
      render 'show'
    end
  end
end
