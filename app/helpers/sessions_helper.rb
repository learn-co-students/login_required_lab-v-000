module SessionsHelper
  def logged_in_user
    session[:name]
  end
end
