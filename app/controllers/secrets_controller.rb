class SecretsController < ApplicationController
   before_action :require_login
   skip_before_action :require_login, only: [:show]


  def show
    if !logged_in?
      redirect_to sessions_new_path
    else
      render :show
    end
  end

  private

  def require_login
   return head(:forbidden) unless session.include? :user_id
 end

end
