class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:new]
  skip_before_filter :verify_authenticity_token, :only => :create

    def login
    end

    def new
    end

    def create
      session[:name] = params[:name]
      redirect_to controller: 'secrets', action: 'show'
    end

    def destroy
      session.delete :name
    end

    private

    def require_login
      redirect_to controller: 'sessions', action: 'new' unless session.include? :user_id
    end

end
