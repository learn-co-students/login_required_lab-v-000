class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == "" || params[:name].nil?
      redirect_to '/new'
    else
      current_user

    end
  end

  def destroy
    session.delete :name
    redirect_to new_path
  end

end
