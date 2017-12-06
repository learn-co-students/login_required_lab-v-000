class SecretsController < ApplicationController
  def new
  end

  def show
  	if !session[:name] 
  		redirect_to sessions_new_path
  	end
  end

end
