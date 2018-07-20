class SessionsController < ApplicationController
  def new
  end

  def create
    #binding.pry
    if params[:name].nil? || params[:name]==''
      redirect_to root_path
    else
      #binding.pry
      session[:name] = params[:name]
      #binding.pry
      redirect_to secrets_show_path
    end
  end

  def destroy
    #binding.pry
    if session[:name].nil?
    else
      session.delete :name

    end
    redirect_to root_path
  end

end
