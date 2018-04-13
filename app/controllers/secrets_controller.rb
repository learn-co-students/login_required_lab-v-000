class SecretsController < ApplicationController
    before_action :require_login
    
    def show
    # if !session[:name]
    # redirect_to "/sessions/new"
    # elsif session[:name]
    end
    # end
      
      
    
    private
    def require_login
        redirect_to controller: 'sessions', action: 'new' unless session[:name]
    end
end