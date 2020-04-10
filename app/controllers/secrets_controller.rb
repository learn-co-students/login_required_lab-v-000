class SecretsController < ApplicationController
  
  before_action :require_login
  
  def show
    
  end
  
  private 
  
  def require_login
    if !session.include? :name 
      redirect_to :login 
    else 
      render :show 
    end 
  end 
  
end
