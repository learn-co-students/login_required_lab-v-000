class SecretsController < ApplicationController
  before_action :redirect_if_logged_out

  def show
    
  end

  private
  def redirect_if_logged_out
    redirect_to '/' if current_user.blank?
  end
end
