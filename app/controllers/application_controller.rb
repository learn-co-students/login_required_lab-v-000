class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    # if !session[:name].nil?
    #   session[:name]
    # else
    #   nil
    # end
    session[:name]
  end
  
  private
  
  def require_login
    # return head(:forbidden) unless session.include? :name # test doesn't want 403: Forbidden
    redirect_to '/login' unless current_user
  end
end