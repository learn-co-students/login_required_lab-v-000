class SecretsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:index]


  def show
    binding.pry
    if session[:name] == current_user
      redirect_to '/secret'
    else
    end
  end


end
