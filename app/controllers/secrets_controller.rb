class SecretsController < ApplicationController
  before_action :require_login

  def hello
    @user = current_user
  end

  def show
  end

  def require_login
    redirect_to root_path unless current_user
  end

end
