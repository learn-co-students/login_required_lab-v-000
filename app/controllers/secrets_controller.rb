class SecretsController < ApplicationController

  def show
    if !current_user
      redirect_to '/sessions/new'
    end
  end
end
