class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  def hello
    @user = current_user
  end

  def require_login
    redirect_to root_path unless current_user
  end


end
