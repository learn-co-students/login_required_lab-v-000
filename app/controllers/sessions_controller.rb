require 'pry' 
class SessionsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]
    def index

    end

    def new
        
    end

    def create
        binding.pry
#        current_user = user_params
    end

    
end
