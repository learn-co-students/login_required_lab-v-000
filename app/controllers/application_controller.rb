class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login # this filter method will be called before all actions, except sessions#new and sessions#create

  def welcome # implicitly renders app/views/application/welcome.html.erb view file
  end

  def current_user
    session[:name]
  end

  private

    def require_login # private filter method that other controllers inherit from ApplicationController
      unless session.include?(:name)
        flash[:message] = "You must log in to access this page."
        redirect_to login_path # same as redirect_to controller: 'sessions', action: 'new'
      end
    end
end
