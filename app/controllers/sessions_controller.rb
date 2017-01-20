class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:new]

    def login
    end

    def new
    end

    def create
      session[:name] = params[:name]
    end

    def destroy
      session.delete
    end

    private

    def require_login
      redirect_to controller: 'sessions', action: 'new' unless session.include? :user_id
    end

end
