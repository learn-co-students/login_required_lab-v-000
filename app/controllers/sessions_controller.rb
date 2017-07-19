class SessionsController < ApplicationController
  def new

  end

  def create
    name = session_params[:name]
    if(name.nil? || name.empty?)
      redirect_to new_session_path
    else
      session[:name] = name
      redirect_to homepage_path
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
    redirect_to homepage_path
  end

  private

    def session_params
      params.permit(:name)
    end
end
