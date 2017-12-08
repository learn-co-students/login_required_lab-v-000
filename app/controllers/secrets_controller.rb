class SecretsController < ApplicationController
  before_action :secret_filter

  def show
    
  end

  private

  def secret_filter
    redirect_to login_path if !logged_in?
  end
end
