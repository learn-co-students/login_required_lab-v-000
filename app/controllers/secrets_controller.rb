class SecretsController < ApplicationController
  def show
    redirect_to new_session_path if current_user.nil?
  end
end
