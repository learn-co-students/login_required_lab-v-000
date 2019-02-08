class SecretsController < ApplicationController

  before_action :require_login

  def show

    # if params[:name].nil? || params[:name].empty? || session[:name].nil?
    #   redirect_to '/login'
    # else
    #   session[:name] = params[:name]
    #   render :show
    # end
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end
end
