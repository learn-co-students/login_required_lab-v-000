class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new]
  skip_before_filter :verify_authenticity_token, :only => :create

    def new
    end

    def create
      session[:name] = params[:name]
      redirect_to controller: 'secrets', action: 'show'
    end

    def destroy
      session.delete :name
    end

end
