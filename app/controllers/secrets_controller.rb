class SecretsController < ApplicationController
  def show
    if !current_user
      redirect_to '/'
    end
  end
end
