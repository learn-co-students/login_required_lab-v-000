class SecretsController < ApplicationController
  def show
  	if !session[:name].nil?
  		render :show
  	else 
  		redirect_to login_path
  	end		
  end
end
