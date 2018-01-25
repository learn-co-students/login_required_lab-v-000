class SecretsController < ApplicationController

 before_action :require_login
    
  def index
  end 

  def show
  end

  private

   def require_login
      redirect_to new_session_path unless logged_in?   
    end



end