class SecretsController < ApplicationController
  before_action :redirect_if_logged_out

  def show; end

  def redirect_if_logged_out
    redirect_to root_path unless current_user
  end
end
