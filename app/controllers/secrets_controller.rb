class SecretsController < ApplicationController
  before_action :require_login

  def index
  end

  def show
    render :index
  end

  private

  def require_login
    if !logged_in?
      redirect_to sessions_new_path
    end
  end
end
