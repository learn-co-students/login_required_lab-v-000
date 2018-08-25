class SecretsController < ApplicationController


  def show
    if session[:name].nil?
      redirect_to "/login"
    end
  end
end
