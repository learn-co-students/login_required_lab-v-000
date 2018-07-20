class SecretsController < ApplicationController

  def show
    #binding.pry
    if !session.empty?
    else
      #binding.pry
      redirect_to root_path
    end
  end

end
