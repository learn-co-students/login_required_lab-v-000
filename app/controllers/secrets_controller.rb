class SecretsController < ApplicationController


  # secrets page => /show
  def show
    if current_user == nil
      redirect_to '/' 
    else
      render :show
    end
  end

end
