class SecretsController < ApplicationController
  before_action :require_login

  def show
    render '/show'
  end


  private

  def require_login
    if current_user.nil?
      redirect_to '/login'
    else
      render '/show'
    end
  end


end
