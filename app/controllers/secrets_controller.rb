class SecretsController < ApplicationController
  before_action :require_login
  
  
  def top_secret 
  end 
  
  
  
  
  
   private
  
  def require_login
    if !current_user
      redirect_to login_path 
    end 
  end 
end
