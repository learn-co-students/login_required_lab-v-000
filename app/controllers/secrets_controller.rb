class SecretsController < ApplicationController

  def show
    if current_user.nil? || current_user.empty?
      redirect_to sessions_new_path
    else
      render :show
    end
  end
end
