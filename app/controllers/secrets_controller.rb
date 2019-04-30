class SecretsController < ApplicationController
    before_action :require_login

    def show
        if current_user != nil
            render :show
        end
    end

    private
    
    def require_login
        if current_user == nil || current_user == ""
            redirect_to '/login'
        end
    end

end