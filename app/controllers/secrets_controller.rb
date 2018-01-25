class SecretsController < ApplicationController
  before_action :require_login

  private
  def require_login
    redirect_to sessions_new_path unless logged_in?
  end

  def logged_in?
    !!current_user
  end


end