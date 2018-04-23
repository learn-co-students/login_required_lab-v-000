class ApplicationController < ActionController::Base

  def current_user
    session[:name]
  end

  def welcome
    if current_user
      @user=current_user
    end
  end
end
