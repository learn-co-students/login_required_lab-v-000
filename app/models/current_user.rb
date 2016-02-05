class CurrentUser < ActiveRecord::Base

  def current_user
    session[:name]
  end

end