class SessionsController < ApplicationController
  def new; end

  def create
    # binding.pry
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    elsif !params[:name].nil?
      session[:name] = params[:name]
      redirect_to('/')
    else
      redirect_to('/')
    end
  end

  def destroy
    session.delete :name unless session[:name].nil?
    redirect_to('/')
  end
end
