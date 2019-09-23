class SecretsController < ApplicationController
    before_action :require_login

  def show
  end

  private
    def require_login
      #redirect_to root_path unless session.include? :name
      if session[:name].present?
        render :show
    else
      redirect_to '/login'
      end
    end

end