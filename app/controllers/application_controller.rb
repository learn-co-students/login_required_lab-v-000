class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :login!, :logged_in?

  def hello
    require_login
  end


  def login!
    session[:name] = params[:name]
  end

  def logged_in?
    !!session[:name]
  end

  def current_user
    session[:name]
  end

  def input_failure
    params[:name] == "" || params[:name].nil?
  end

  def logout!
    session.delete :name
  end

  private

  def require_login
    redirect_to '/login' unless logged_in?
  end

end
