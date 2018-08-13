class SecretsController < ApplicationController 
    before_action :require_login
    skip_before_action :require_login, only: [:index]

   def show 
    if !current_user 
        redirect_to '/login'
    else    
        @secret = "The secret message is found here. Another edit here."
    end     
   end      

   private 

   def require_login
    redirect_to controller: 'sessions', action: 'new' unless current_user
   end  
end 