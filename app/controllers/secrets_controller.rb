class SecretsController < ApplicationController
  def show
      if !logged_in
      redirect_to login_path
    else
      render "show"
    end
  end
end
