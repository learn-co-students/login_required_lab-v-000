class SecretsController < ApplicationController
    before_action :require_login
    
    def show
        @name = session[:name]
    end

    private

    def require_login
        if !current_user
            redirect_to '/login'
        end
    end

end