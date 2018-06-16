class SecretsController < ApplicationController
  before_action :require_login

  def show
    
    end
  end

  private

  def require_login
    if !session[:name] || session[:name].empty?
      redirect_to login_path
  end
end
