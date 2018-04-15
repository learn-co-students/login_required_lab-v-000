class SecretsController < ApplicationController

  def show
    if current_user

    else
      redirect_to login_path
    end
  end

end
