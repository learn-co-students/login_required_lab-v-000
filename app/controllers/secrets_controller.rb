class SecretsController < ApplicationController
  def show
    redirect_to '/' if !current_user
  end

  def new 
    
  end
end