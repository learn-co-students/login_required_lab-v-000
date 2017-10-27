class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            render 'secrets/show'
        else
            redirect_to new_session_path
        end

    end

    def destroy
        session.delete :name unless current_user.nil?
        redirect_to new_session_path
    end

end
