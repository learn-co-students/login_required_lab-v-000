class SecretsController < ApplicationController
  def show
    if current_user
      render secrets_show_path
    else
      redirect_to sessions_new_path
    end
  end
end
