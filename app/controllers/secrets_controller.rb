class SecretsController < ApplicationController
  before_action :require_login, only: [:show]

  private

  def require_login
    redirect_to root_path unless !!session[:name]
  end

end
