class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # session[:name] = params[:name]
  #   if params[:name] != nil && params[:name] != ""
  #     redirect_to '/'
  #   else
  #     redirect_to '/login'
  #   end

  def current_user
    session[:name]
  end

  
end
