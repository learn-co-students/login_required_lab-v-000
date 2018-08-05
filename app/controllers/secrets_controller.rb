class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def index
  end

  def show
    if !current_user
      redirect_to '/login'
    end
    @secret = "This is the secret message"
  end

  private

  def require_login
    redirect_to '/login' unless session.include?(:name)
  end

end
