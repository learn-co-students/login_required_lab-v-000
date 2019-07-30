class SecretsController < ApplicationController 
    before_action :login_required

    def show

    end 

    private 
        def login_required
            if session[:name].present?
                render :show 
            else 
                redirect_to '/login'
            end 
        end 

end 