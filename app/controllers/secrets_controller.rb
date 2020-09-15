class SecretsController < ApplicationController
  
  def show
    redirect_to '/new' if !current_user
  end

end