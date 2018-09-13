class SessionsController < ApplicationController


  def create
     redirect_to login_path if !current_user.present?

  end

  def destroy
    reset_session
    redirect_to '/'
  end

end
