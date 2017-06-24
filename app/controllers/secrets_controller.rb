class SecretsController < ActionController::Base
    
before_action :require_login
 
  def show
   if !session[:name]
		redirect_to '/login'
   end

  end
 
  
 
  private
 
  def require_login
    if !session.include? :name
    	redirect_to '/login'
    end
  end
  
end
