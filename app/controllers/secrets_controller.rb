class SecretsController < ApplicationController

  before_action :authenticate

  def show
  end

  private

  def authenticate
    redirect_to new_session_path if current_user.nil? or current_user == ""
  end
end
