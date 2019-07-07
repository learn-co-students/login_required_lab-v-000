class SecretsController < ApplicationController
    def show 
        if session[:name].blank? 
            redirect_to :login, status 301
          else
            render :show
          end
    end
end
