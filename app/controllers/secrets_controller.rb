class SecretsController < ApplicationController

  def index
    if session[:name] == nil || session[:name] == ""
      redirect_to new_session_path
      flash[:message] = "Ha! Try to hack your way in without logging in?  Not today, bucko!"
    end
  end

end
