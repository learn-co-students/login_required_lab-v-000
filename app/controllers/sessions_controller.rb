class SessionsController < ApplicationController
    before_action :require_login, only: [:destroy]

  def new
  end

  def create
    if params[:name].blank?
      redirect_to new_path
    else session[:name] = params[:name]
      redirect_to show_path

    end
  end

    def destroy
      session.clear
      redirect_to new_path
    end

end
