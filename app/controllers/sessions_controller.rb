class SessionsController < ApplicationController

    helper_method :current_user

    def new
    end

    def show
        if current_user
            redirect_to "/secrets"
        else
            redirect_to "/login"
        end
    end

    def create
        if params[:name].blank?
            redirect_to "/login"
        else
            session[:name] = params[:name]  
            redirect_to '/'
        end
    end

    def destroy
        if session[:name]
            session.destroy
            redirect_to '/'
        else
            session[:name]=nil
        end
    end

end