class SecretsController < ApplicationController

  def show
    redirect_to '/sessions/new' if !logged_in?
  end

end
