class SecretsController < ApplicationController
  def show
    if !session[:name]
      redirect_to '/sessions/new'
    end
  end
end
