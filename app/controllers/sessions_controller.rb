class SessionsController < ApplicationController
    def new
        # just renders the form
        render 'new'
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]

            redirect_to '/'
        else
            redirect_to action: :new
        end
    end

    def destroy
        session.delete("name") if session[:name]

        redirect_to action: :new
    end
end