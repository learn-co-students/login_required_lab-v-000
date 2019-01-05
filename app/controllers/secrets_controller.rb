class SecretsController < ApplicationController

    before_action :must_be_logged_in
    
    def show
        # raise session.inspect
        @current_user = current_user                   
    end

    def must_be_logged_in
        redirect_to sessions_new_path unless session.include? :name
    end
    
end
