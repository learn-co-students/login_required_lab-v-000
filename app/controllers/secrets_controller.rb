class SecretsController < ApplicationController
  def show
    if current_user
      render "show"
    else
      redirect_to new_session_path
    end
  end
end
