module CurrentUser < ApplicationController

  def current_user
    session[:name]
  end

end

