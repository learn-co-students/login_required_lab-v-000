class SessionsController < ApplicationController
  before_action :require_name, only: [:destroy]

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to "/sessions/new"
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
  end

  private

    def require_name
      redirect_to "/sessions/new" unless !current_user.nil?
    end

end
