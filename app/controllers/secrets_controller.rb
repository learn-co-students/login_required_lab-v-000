class SecretsController < ApplicationController
 before_action do
   redirect_to login_path unless current_user
 end

 def show
   if current_user
     render :show
   else
     redirect_to login_path
   end
 end

end
