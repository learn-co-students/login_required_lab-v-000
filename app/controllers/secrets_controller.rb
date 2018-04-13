class SecretsController < ApplicationController
    before_action :require_login
    
    def show
    if username.blank?
    redirect_to '/sessions/new'
    elsif current_user
      redirect_to "/"
    end
    end
    
    
    private
    def require_login
        return head(:forbidden) unless session.include? session[:name]
    end
end