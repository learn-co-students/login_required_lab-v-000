class ApplicationController < ActionController::Base
  # before_action do |controller|
    # controller.send(:require_login) and return
  # end # This doesn't work ("Unexpected return")

  # before_action do |controller|
    # controller.send(:require_login); return if performed?
  # end # Neither does this.

  helper_method :current_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    # current_user ? render 'welcome' : redirect_to(login_path) # This doesn't work, for some reason.
    # if current_user
    #   render :welcome
    # else
    #   redirect_to login_path
    # end

    require_login and return

    render :welcome
  end

  def current_user
    session[:name]
  end

  private

    def require_login
      unless current_user
        redirect_to login_path
      end
    end
end
