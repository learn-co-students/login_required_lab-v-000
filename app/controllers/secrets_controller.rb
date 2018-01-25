class SecretsController < ApplicationController
  before_action :require_login
  def new
  end

  def show
    render "/secrets/secret_page"
  end

  private

  def require_login
    unless current_user
      redirect_to "/login"
    end
  end
end
