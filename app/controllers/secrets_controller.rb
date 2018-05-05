class SecretsController < ApplicationController
   
    def show
        if session[:name]
            render
        else
            redirect_to '/login'
        end
    end

end