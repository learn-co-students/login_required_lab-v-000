class SecretsController < ApplicationController
  def show
    if current_user == nil
      redirect_to '/sessions/new'
    end
  end
end
