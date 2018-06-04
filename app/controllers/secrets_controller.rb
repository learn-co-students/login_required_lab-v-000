class SecretsController < ApplicationController

  def show
    if !session[:name] || session[:name].empty?
      redirect_to login_path
    end 
  end
end
