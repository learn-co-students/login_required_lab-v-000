class SessionsController < ApplicationController


    def show

    end

    def new

     end
    def index
    end


      def create
        if params[:name] == nil || params[:name] == ""
          redirect_to "/"
        else
          session[:name] = params[:name]
          @name = session[:name]
          render :welcome
        end
      end

      def destroy
        session[:name] = nil if session[:name]
        redirect_to "/"
      end

    def destroy
      session[:name] = nil if session[:name]
          redirect_to "/"
    end


  end
