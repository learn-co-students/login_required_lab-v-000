class SecretsController < ApplicationController
  def show
    redirect_to '/' if current_user.blank?
  end
end
