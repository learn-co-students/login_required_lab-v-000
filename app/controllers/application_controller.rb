class ApplicationController < ActionController::Base
  # before_action do |controller|
    # controller.send(:require_login) and return
  # end # This doesn't work ("Unexpected return")

  # before_action do |controller|
    # controller.send(:require_login); return if performed?
  # end # Neither does this.
  before_action :require_login, only: [:welcome, :show, :destroy]
  # This technically works - only application#welcome, secrets#show, and sessions#destroy use this.
  # But it may introduce bugs if I define actions with the same names in other controllers.
  # To avoid that, I can use #skip_action in those controllers.

  helper_method :current_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    # redirect_to the_secret_page_path 
    # Interesting; I don't get a DoubleRedirect error despite #login_required being called.
    # So, it seems that I don't need "and return" after calling #require_login in the before_action.

    # current_user ? render 'welcome' : redirect_to(login_path) # This doesn't work, for some reason.
    # if current_user
    #   render :welcome
    # else
    #   redirect_to login_path
    # end

    # require_login # Remember: I don't need the "and return" here, since there's nothing after it.

    # render :welcome # I don't actually need this; implicit rendering still works here!
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
