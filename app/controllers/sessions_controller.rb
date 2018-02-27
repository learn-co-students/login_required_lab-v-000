require 'pry'
class SessionsController < ApplicationController

  def new

  end

  def create
    #binding.pry
    if !params[:name].blank?
      session[:name] = params[:name]
      render "welcome"
    else
      redirect_to '/'
    end


    def destroy
      session[:name].nil?
      session.delete :name unless session[:name].nil?
      redirect_to '/'
    end

  end







end
