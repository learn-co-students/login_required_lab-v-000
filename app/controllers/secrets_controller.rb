class SecretsController < ApplicationController

  def show
    if !current_user
      redirect_to new_session_path
    end
    @secret = "Secret #{params[:id]}: You are wonderful"
  end


end
