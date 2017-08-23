class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  def index
  end

  def create
  end

  private

  def require_login
    redirect_to new_session_path unless current_user
  end

end

