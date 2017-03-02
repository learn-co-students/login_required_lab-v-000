require 'pry'

class SessionsController < ApplicationController

    def create
        session[:name] = params[:name] if params[:name]
        if session[:name]
            redirect_to new_path if session[:name].length < 1 #blank name
        else #no session name
            redirect_to new_path
        end

    end

    def new
    end

    def destroy
        session[:name] = nil if session[:name]
        redirect_to new_path
    end

end