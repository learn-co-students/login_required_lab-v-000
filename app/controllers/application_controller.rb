class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  
  def current_user
     session[:name] = params[:name]
   
  end
  
      
    
    private
    def require_login
        redirect_to controller: 'sessions', action: 'new' unless session.include? session[:name]
    end

end

