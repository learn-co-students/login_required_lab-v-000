class SecretsController < ApplicationController
    before_action :require_login

    def show
    end

    def require_login
        redirect_to sessions_new_path unless current_user
    end

end