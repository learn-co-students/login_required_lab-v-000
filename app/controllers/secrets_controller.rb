class SecretsController < ApplicationController

  def show
    if require_login
      render :secret
    else
      redirect_to login_path
    end
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
