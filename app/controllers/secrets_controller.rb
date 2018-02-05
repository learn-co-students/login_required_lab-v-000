class SecretsController < ApplicationController

  def show
    redirect_to login_path unless session[:name]
  end
end
