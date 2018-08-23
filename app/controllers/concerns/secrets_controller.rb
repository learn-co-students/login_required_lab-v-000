class SecretsController < ApplicationController
  before_action :require_login

  def show
    render :show
  end

  private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless logged_in?
  end

end
