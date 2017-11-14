class SecretsController < ApplicationController
  helper_method :current_user
  before_action :require_loggin

  def show

  end

  private

  def require_loggin
    redirect_to new_session_path unless current_user
  end


end
