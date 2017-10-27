class SecretsController < ApplicationController
    before_action :require_login

    def show
        @secret = "This is a big secret!"
    end

    private
    def require_login
        redirect_to new_path unless session.include? :name
    end
end
