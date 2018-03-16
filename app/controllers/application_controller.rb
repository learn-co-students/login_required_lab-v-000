class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
      redirect_to controller: "sessions", action: 'new' unless current_user
  end
  def current_user
    #binding.pry
      session[:name]
  end

  private
  def require_logged_in
      #return head(:forbidden) unless session.include? :user_id
      redirect_to controller: 'sessions', action: 'new' unless current_user

  end
end



  #rails g controller sessions  --no-helper --no-assets --no-controller-specs
