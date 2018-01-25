class SecretsController < ApplicationController
  before_action :logged
  
  def show
  end
  
  
  private
  
    def logged
      redirect_to new_session_path unless current_user
    end
end
