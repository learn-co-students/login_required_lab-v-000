module ApplicationHelper
  def current_user
    user = session[:name]
  end
end
