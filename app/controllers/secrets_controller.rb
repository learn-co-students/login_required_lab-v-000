class SecretsController < ApplicationController
  before_action :require_login, only: [:show]
  
  def show
  end
  
  private
  
  def require_login
    redirect_to login_path unless current_user
  end
  
end
