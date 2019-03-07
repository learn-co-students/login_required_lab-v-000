class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].empty? 
      redirect_to '/login'
    elsif !session[:name].nil? && !session[:name].empty?
      redirect to '/'
    else
      session[:name] = params[:name]
        redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to :root
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
