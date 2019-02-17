class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :logged_in?, :logout!

  def current_user
    session[:name]
  end

  def hello
    if !!current_user
      render :hello
    else
      redirect_to root_path
    end
  end


  def logout!
    session.destroy
    redirect to '/'
  end
end
