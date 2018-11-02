class SessionsController < ApplicationController
    def index
      redirect_to "/login"
    end

    def new
    end

    def create
      session[:name] = params[:name]
      if session[:name] == "" || session[:name] == nil
        redirect_to '/sessions/new'
      else
        redirect_to '/show'
      end
    end

    def destroy
      if session
        session.delete :name
      else
        session[:name] = nil
      end
      redirect_to '/sessions/new'
    end

end
