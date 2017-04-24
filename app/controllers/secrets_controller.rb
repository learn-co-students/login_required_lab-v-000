class SecretsController < ApplicationController

  def show
    if session[:name] == nil
      redirect_to '/sessions/new'
    end
  end

end
