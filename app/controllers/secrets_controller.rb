class SecretsController < ApplicationController
  #before_action :require_login


  def show
    if !session[:name]
      redirect_to '/'
    end
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
