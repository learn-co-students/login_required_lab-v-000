class SecretsController < ApplicationController 
  before_action :require_logged_in
  
  
  def show 
    session[:name]
  end 

  private 
  
#  def require_login 
#    raise params.inspect
#    redirect_to 'sessions/login' unless session.include? :user_id
#  end 
  
end 