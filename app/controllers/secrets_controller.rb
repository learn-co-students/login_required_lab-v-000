class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def new
  end

  def show
    if current_user
      render :show
    else
      redirect_to login_path
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
