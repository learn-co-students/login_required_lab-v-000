class SecretsController < ApplicationController
  before_action :limits

  def show

  end

  private

  def limits
    redirect_to new_session_path if current_user.nil?
  end
end
