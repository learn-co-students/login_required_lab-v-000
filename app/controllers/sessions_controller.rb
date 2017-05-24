class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:new]


  def new
  end

  def create
    session[:name] = params[:name]
    # binding.pry
    if current_user.present?
      redirect_to secret_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.destroy
    redirect_to secret_path
  end

  # private

  # def require_login
  #   return head(:forbidden) unless session.include? :name
  # end
end
