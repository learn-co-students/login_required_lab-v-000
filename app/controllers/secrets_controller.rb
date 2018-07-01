class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    # return head(:forbidden) unless session.include? :name
    if !session.include? :name
      redirect_to :controller => 'sessions', :action => 'new'
    else

      @secret = "This is the Secret!!!"
      render :show
    end
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
