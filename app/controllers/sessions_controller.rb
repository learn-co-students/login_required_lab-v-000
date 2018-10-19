class SessionsController < ApplicationController


    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to root_path
        else
           session[:name] = params[:name]
           redirect_to controller: "secrets", action: "show"
            # There is an alternative through rails magic using the path
        end
    end


    def destroy
        if session[:name].nil?
          redirect_to root_path
        else
            if !session[:name].nil?
            session.delete :name
            redirect_to root_path
            end
        end
    end


end

