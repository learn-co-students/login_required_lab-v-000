class SecretsController < ApplicationController
  before_action :check_logged_in

  def show
  end

  private

  def check_logged_in
    redirect_to '/login' unless current_user
  end
end
