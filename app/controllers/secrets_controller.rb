class SecretsController < ActionController::Base
  
  def show
    unless session[:name]
      redirect_to "/login"
    end
  end
  
end