class SecretsController < ApplicationController
  before_action :require_login
  
  def show
    
  end
  
  private 
  
  def require_login 
    if session[:name] == "" || session[:name].nil?
      redirect_to sessions_new_path
    end
  end
end
