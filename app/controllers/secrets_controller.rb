class SecretsController < ApplicationController
  # This all works, but I want to refactor this stuff with #before_action (and in other ways if possible).
  def show
    if current_user
      render :show
    else
      redirect_to login_path
    end
  end
end