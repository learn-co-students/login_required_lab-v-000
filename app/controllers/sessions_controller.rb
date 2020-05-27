class SessionsController < ApplicationController


  def new
  end

   def create

    if params[:name].nil?
      redirect_to '/sessions/new'
    elsif params[:name].empty?
      redirect_to '/sessions/new'
    elsif params[:name]
      session[:name] = params[:name]

      redirect_to '/secrets'
    end
  end

  def destroy
    session.delete :name
  end

end
