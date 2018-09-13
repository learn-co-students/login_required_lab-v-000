class SessionsController < ApplicationController


  def create
     redirect_to new_session_path unless current_user.present?

  end

  def destroy
    reset_session
    redirect_to '/'
  end

end
