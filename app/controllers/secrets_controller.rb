class SecretsController < ApplicationController
  
  def show
    if current_user
    render 'sessions/homepage'
   else
     redirect_to login_path
   end
  end
  
end
