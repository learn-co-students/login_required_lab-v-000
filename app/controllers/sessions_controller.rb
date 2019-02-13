class SessionsController < ApplicationController

  def new; end

  def create
    name = params[:name]

    if name && !name.empty?
      session[:name] = name
    else
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session.delete(:name)
    end

    redirect_to root_path
  end
end
