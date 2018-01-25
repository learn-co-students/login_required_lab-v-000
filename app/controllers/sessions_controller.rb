class SessionsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]

    def index
        @username = current_user
    end

    def new

    end

    def create
        if user_params[:name].nil? || user_params[:name].empty?
            redirect_to sessions_new_path
        else
            session[:name] = user_params[:name]
            redirect_to sessions_index_path
        end
    end

    def destroy
        if !session[:name].nil?
            session[:name] = nil
        end
        redirect_to sessions_index_path
    end
end
