class SecretsController < ApplicationController

  before_action :logged_in?, only: [:show]

  def show
    if !logged_in?
      redirect_to login_path
    end
  end

  private 

  def require_login 
    redirect_to login_path unless logged_in?
  end

end
