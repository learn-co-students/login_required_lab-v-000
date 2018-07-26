class SecretsController < ApplicationController
  # before_action :require_login
    helper_method :current_user

  def show
    if current_user == nil
      redirect_to controller: 'sessions', action: 'new'
    else
      @secret = session[:name]
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
