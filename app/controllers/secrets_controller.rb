class SecretsController < ApplicationController
  before_action :require_login

  def require_login
    redirect_to new_session_path unless current_user
  end

  def index
  end

  def show
  end


end
