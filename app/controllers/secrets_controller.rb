class SecretsController < ApplicationController 
    before_action :require_login

   def show 
    @secret = "The secret message is found here. Another edit here."
   end      

   private 

   def require_login
    return redirect_to login_path unless session.include?(:name)
   end  
end 