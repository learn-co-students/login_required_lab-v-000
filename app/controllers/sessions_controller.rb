class SessionsController < ApplicationController

  def index
    # binding.pry
  end

  def new

  end

  def create
    # binding.pry
    if params[:name].nil?
      redirect_to '/sessions/new'
    elsif params[:name].empty?
      redirect_to '/sessions/new'
    elsif params[:name]
      # binding.pry

      session[:name] = params[:name]
      # binding.pry
      redirect_to '/secrets'
    end
  end

  def destroy
    # binding.pry
    if !session[:name].nil?
      session.delete :name
    end
  end


end
