class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to new_path
    else
      current_user
    end
  end

  def destroy
    session.delete :name
    redirect_to new_path
  end

end
