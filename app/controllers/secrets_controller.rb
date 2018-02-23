class SecretsController < ApplicationController
  def show
    if current_user
      @secret = "HELLO WORLD"
    else
      redirect_to '/'
    end
  end
end
