class SecretsController < ApplicationController

  def show
    redirect_to new_session_path unless current_user.present?
  end


end
