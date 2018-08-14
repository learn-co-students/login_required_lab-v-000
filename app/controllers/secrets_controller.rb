
class SecretsController < ApplicationController
    def show
        if !current_user
            redirect_to login_path
        else
            @name = current_user
            @secret = "Pssst! You're all logged in!"
        end
   end
end