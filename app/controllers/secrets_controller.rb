class SecretsController < ApplicationController
  # before_action :require_login

  def show
    # binding.pry
    # if current_user.blank?
    #   redirect_to new_sessions_path
    # end
  end


  private

   def require_login
     return head(:forbidden) unless session.include? :name
   end

end
