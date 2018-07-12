class SecretsController < ApplicationController

  before_action :current_user

  def show
    if session[:name]
      @current_user = session[:name]
    else
      redirect_to root_path
    end
  end

  def secret
    
  end


end
