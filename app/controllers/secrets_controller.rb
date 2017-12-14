class SecretsController < ApplicationController
  # before_action :require_login

  def show
    if !session[:name]
      redirect_to '/sessions/new'
    end
    #redirect_to login if not logged in
    #show secret if logged in. Send get request with no params
  end

  # private
  #
  #   def require_login
  #     return head(:forbidden) unless session.include? :name
  #   end

end
