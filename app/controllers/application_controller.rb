class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def authentication_required
  if !current_user
    redirect_to '/sessions/new'
  # else
  #   redirect_to '/root'
    end
  end
  
end 
