require 'pry'
class SecretsController < ApplicationController
  def new
  end

  def show
    binding.pry
    if params[:name] != current_user
      redirect_to sessions_path
    else 
      render :show
  end
 end
end
