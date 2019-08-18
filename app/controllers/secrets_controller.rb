class SecretsController < ApplicationController
    before_action :require_login

    def index
    end

    def show
        @secret = "This is a secret message"
    end

    private
    def require_login
        unless session.include? :name
            redirect_to login_path
            return head(:permanent_redirect)
        end
    end
end