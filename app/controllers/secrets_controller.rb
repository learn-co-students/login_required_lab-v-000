class SecretsController < ApplicationController
  def show
    if current_user.nil?
      redirect_to login_path
    else

      render :show
    end
  end

end
