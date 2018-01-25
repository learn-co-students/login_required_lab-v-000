class SecretsController < ApplicationController
  def show
    if current_user
    else
      redirect_to '/new'
    end
  end
end
