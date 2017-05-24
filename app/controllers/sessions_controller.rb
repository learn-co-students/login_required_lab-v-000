class SessionsController < ApplicationController
  # before_action :require_login
  # skip_before_action :require_login, only: [:new]


  def new
  end

  def create
    session[:name] = params[:name]
    # binding.pry
    if current_user.present?
      redirect_to("Show", "SecretsController")
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.destroy
    redirect_to '/login'
  end

  # private

  # def require_login
  #   return head(:forbidden) unless session.include? :name
  # end
end
