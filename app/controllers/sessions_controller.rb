class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:new]

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      render 'secrets/show'
    end
  end

  def destroy
    session[:name] ? session.clear : session[:name] = nil
    redirect_to sessions_new_path
  end

  private

  def require_login
   return head(:forbidden) unless session.include? :user_id
 end

end
