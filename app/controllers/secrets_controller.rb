class SecretsController < ApplicationController
  def show
    if !current_user.present?
      redirect_to login_path
    end
  end
end
