class SecretsController < ApplicationController

    def show 
        redirect_to new_sessions_path unless current_user
    end 

end