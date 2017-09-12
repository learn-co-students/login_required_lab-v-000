class SecretsController < ApplicationController
    def show
        if !current_user
            redirect_to login_path
        end
    end
end
