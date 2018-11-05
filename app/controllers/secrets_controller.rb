class SecretsController < ApplicationController
  def show
    unless logged_in?
      redirect_to login_path
    end
  end
end
