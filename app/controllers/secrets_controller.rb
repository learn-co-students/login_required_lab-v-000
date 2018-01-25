class SecretsController < ApplicationController

  def show
    if !logged_in?
      redirect_to new_session_path
    else
      render "show"
    end
  end

end