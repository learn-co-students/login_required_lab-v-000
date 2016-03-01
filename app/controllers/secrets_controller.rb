class SecretsController < ApplicationController
  def show
    if current_user
      @secret = "I am hungry"
    else
      redirect_to new_session_path
    end
  end
end