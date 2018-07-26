class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new

  end


  def create
    session[:name] = params[:name]
        if params[:name].nil? || params[:name].empty?
          redirect_to root_path
        else
          redirect_to welcome_path
        end
    end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end

end
