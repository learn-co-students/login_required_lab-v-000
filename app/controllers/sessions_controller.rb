class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:new]


  def new
  end

  def create
    session[:name] = params[:name]
    if current_user.blank?
      redirect_to '/login'
    else
      redirect_to("Show", "SecretsController")
    end
  end

  def destroy
    session[:name] = params[:name] = nil
    redirect_to '/login'
  end

  # private

  # def require_login
  #   return head(:forbidden) unless session.include? :name
  # end
end
