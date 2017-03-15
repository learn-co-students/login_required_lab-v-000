class SecretsController < ApplicationController

  def show
    if !logged_in?
      redirect_to sessions_new_path
    end
  end

end
