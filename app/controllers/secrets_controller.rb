class SecretsController < ApplicationController

  def show
    redirect_to '/sessions/new' unless current_user
  end

end
