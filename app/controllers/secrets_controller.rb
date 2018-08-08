class SecretsController < ApplicationController
  before_action :require_login

  def show
    render '/show'
  end

  def home
    render '/home'
  end


  private

  def require_login
    redirect_to '/' if current_user.nil?
  end


end
