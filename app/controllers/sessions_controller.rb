class SessionsController < ApplicationController
    before_action :current_user 


    def new 
    end

     def create
        if params[:username].empty? || params[:username].nil?
            redirect_to(controller: "sessions", action: "new")

        else 
            session[:username] = params[:username]
            redirect_to "/"
        end
    end 

     def show 

     end

     private 

     def current_user 
        return head(:forbidden) unless session.include? :user_id 
    end

end