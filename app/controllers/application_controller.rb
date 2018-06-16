class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # def require_login
  #   if !current_user
  #     return head(:forbidden)
  #   else
  #     redirect_to controller: "sessions", action: "new"
  #   end
  # end

  #??? Why don't we need a helper method ... because controller and views are automatically
  # connected in rails? Then what's helper_method for? API guide shows that as the purpose of helper_method
  
  def hello
    redirect_to controller: 'sessions', action: 'new' unless session[:name] #TRY current_user
  end
  
  def current_user
    session[:name]
  end

  private

  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
