class SecretsController < ApplicationController

  def index
    redirect_to sessions_new_path
  end

  def show
    if logged_in?
    else
    redirect_to sessions_new_path
    end
  end


end
