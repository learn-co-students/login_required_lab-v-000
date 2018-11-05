class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name].to_s.strip
    if !name.empty?
      self.current_user = name
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    self.logg_out!
    redirect_to root_path
  end
end
