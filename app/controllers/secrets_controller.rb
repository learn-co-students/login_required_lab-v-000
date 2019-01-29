class SecretsController < ApplicationController

  def show
    if current_user
      render :show
    else
      redirect_to '/new'
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
