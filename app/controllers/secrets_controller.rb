class SecretsController < ApplicationController
  before_action :require_login

   def show
     if session[:name]
       render :show
     else
       redirect_to '/sessions/new'
     end
   end


   private
   def require_login
     session[:name]
   end
end
