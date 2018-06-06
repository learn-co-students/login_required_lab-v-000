class SecretsController < ApplicationController

  #before_action :require_login

  def show
    if !current_user || current_user == ''
      redirect_to '/'
    end
  end

  private

  def require_login
    return head(:forbidden) unless current_user && current_user != ''
  end

end