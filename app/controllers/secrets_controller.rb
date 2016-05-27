class SecretsController < ApplicationController
  before_action :require_login

  def show


  end

 


  private

  def require_login
    binding.pry
    if session[:name] == nil
      redirect_to '/'
    elsif session[:name] == ""
      redirect_to '/'
    end


  end


end
