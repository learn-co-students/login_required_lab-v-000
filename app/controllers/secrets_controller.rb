class SecretsController < ApplicationController
  def index
    if current_user.nil?
      redirect_to login_path
    else

      render :index
    end
  end

end
