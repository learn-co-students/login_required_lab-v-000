class SessionsController < ApplicationController

  def show
      if current_user != nil || current_user != ""
        redirect_to new_session_path
      else
        render :show
      end
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to 'secrets/show'
    else
      redirect_to new_session_path
    end
  end

  def destroy
    if !session[:name].nil?
      session[:name] = nil
    end
    redirect_to new_session_path
  end

end
