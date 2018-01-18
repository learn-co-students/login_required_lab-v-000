class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to homepage_path
    end
  end

  def create
    if current_user
      redirect_to homepage_path
    else
      if params[:name]
        if params[:name].empty?
          redirect_to login_path, alert: "Name can't be blank"
        else
          session[:name] = params[:name]
          redirect_to homepage_path
        end
      else
        redirect_to login_path
      end
    end
  end

  def destroy
    if current_user
      session.delete :name
      redirect_to login_path
    else
      redirect_to login_path
    end
  end
end
