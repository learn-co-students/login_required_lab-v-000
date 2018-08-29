class SecretsController < ApplicationController

    def show
        if !current_user
            redirect_to login_path
        else
            @secret = "Secret"
        end
    end

end
